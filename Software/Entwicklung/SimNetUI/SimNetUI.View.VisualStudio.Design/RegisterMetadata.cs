using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Metadata;
using Microsoft.Windows.Design;
using Microsoft.Windows.Design.Features;
using SimNetUI.Activities.PropertyObjects.Distributions;
using SimNetUI.VisualStudio.Design.Tasks;

using SimNetUI.VisualStudio.Design.Initializers.Activities;
using System.ComponentModel;
using SimNetUI.VisualStudio.Design.AttributeEditors;

using Microsoft.Windows.Design.PropertyEditing;

using SimNetUI.VisualStudio.Design.Adorner.Provider;
using SimNetUI.VisualStudio.Design.Adapters;

using SimNetUI.VisualStudio.Design.Util;
using SimNetUI.VisualStudio.Design.AttributEditors;
using SimNetUI.VisualStudio.Design.ItemFactories;
using SimNetUI.Activities.Controls;
using SimNetUI.Controls;
using SimNetUI.Activities.PropertyObjects.Schedule;
using SimNetUI.VisualStudio.Design.DesignModeValueProviders;
using SimNetUI.Companions.Controls;

// Documentation (2011-06-01): 
// http://msdn.microsoft.com/en-us/library/ee848386.aspx
// http://msdn.microsoft.com/en-us/library/ee848387.aspxt
// Code and comments are partly based on this documentation


namespace SimNetUI.VisualStudio.Design
{
    internal class RegisterMetadata : IProvideAttributeTable
    {
        AttributeTableBuilder builder;

        public RegisterMetadata()
        {
            builder = new AttributeTableBuilder();

            AddCustomActivityBaseAttributes(typeof(Wait),
                    new FeatureAttribute(typeof(ActivityDelayBaseInitializer)),
                    new EditorAttribute(typeof(WaitCategoryEditor),typeof(WaitCategoryEditor))
                    );

            AddCustomActivityBaseAttributes(typeof(Generator),
                    new FeatureAttribute(typeof(GeneratorInitializer)),
                    new EditorAttribute(typeof(GeneratorCategoryEditor),
                                        typeof(GeneratorCategoryEditor))
                                        );

            builder.AddCustomAttributes(typeof(Schedule),
                PropertyNames.Schedule.ContentProperty.Name,
                 new NewItemTypesAttribute(
                     typeof(Erlang),
                     typeof(Exponential),
                     typeof(LogNormal),
                     typeof(Normal),
                     typeof(Triangular),
                     typeof(UniformDouble),
                     typeof(UniformInt),
                     typeof(Weibull),
                     typeof(NoEvent),
                     typeof(Fixed)
                ) { FactoryType = typeof(DistributionNewItemFactory) });

            AddCustomActivityBaseAttributes(typeof(Exit),
                 new EditorAttribute(typeof(ExitBaseCategoryEditor),
                                     typeof(ExitBaseCategoryEditor))
                );



            AddCustomActivityBaseAttributes(typeof(AssignResource),
                new EditorAttribute(typeof(AssignResourceCategoryEditor),
                                    typeof(AssignResourceCategoryEditor))
                );

            AddCustomActivityBaseAttributes(typeof(ReleaseResource),
                new EditorAttribute(typeof(ReleaseResourceCategoryEditor),
                                    typeof(ReleaseResourceCategoryEditor))
                );

            AddCustomAttributes(
                typeof(SimulationContainer),
                ToolboxBrowsableAttribute.Yes,
                new FeatureAttribute(typeof(SimulationContainerAdornerProvider)),
                new FeatureAttribute(typeof(SimulationContainerControlAdapter))
            );

            AddCustomAttributes(typeof(QueueCompanion), ToolboxBrowsableAttribute.Yes);

            // Distributions
            /*AddCustomAttributes(
                typeof(Normal),
                new FeatureAttribute(typeof(NormalInitializer)));*/



        }


        private void AddCustomAttributes(Type type, params Attribute[] attributes)
        {
            builder.AddCustomAttributes(type, attributes);
        }

        private void AddCustomActivityBaseAttributes(Type type, params Attribute[] attributes)
        {


            AddCustomAttributes(type,
                ToolboxBrowsableAttribute.Yes,
                new FeatureAttribute(typeof(ActivityBaseTaskProvider)),
                new FeatureAttribute(typeof(ActivityDesignModeValueProvider)));

            if (attributes != null)
                AddCustomAttributes(type, attributes);
        }


        // Called by the designer to register any design-time metadata. 
        public AttributeTable AttributeTable
        {
            get
            {




                return builder.CreateTable();
            }
        }

    }
}
