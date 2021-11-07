using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.PropertyEditing;
using System.Windows;

namespace SimNetUI.VisualStudio.Design.AttributeEditors
{
    internal abstract class GeneralCategoryEditor : CategoryEditor
    {



        private EditorResources res = new EditorResources();
        private string TemplateName;

        

        public GeneralCategoryEditor(string TemplateName)
        {
            this.TemplateName = TemplateName;
            
        }

        public override bool ConsumesProperty(PropertyEntry property)
        {
            return true;
        }

        public override DataTemplate EditorTemplate
        {
            get
            {
                return res[this.TemplateName] as DataTemplate;
            }
        }

        public override object GetImage(Size desiredSize)
        {
            return null;
        }

        public override string TargetCategory
        {
            get { return "Simulation"; }
        }
    }
    
}
