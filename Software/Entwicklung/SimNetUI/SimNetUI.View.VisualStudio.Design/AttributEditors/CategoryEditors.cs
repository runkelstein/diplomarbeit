using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.VisualStudio.Design.AttributeEditors;

namespace SimNetUI.VisualStudio.Design.AttributEditors
{
    internal class GeneratorCategoryEditor : GeneralCategoryEditor
    {
        public GeneratorCategoryEditor() : base("GeneratorCategorieEditorTemplate") { }
    }

    internal class ExitBaseCategoryEditor : GeneralCategoryEditor
    {
        public ExitBaseCategoryEditor() : base("ExitCategoryEditorTemplate") { }
    }

    internal class WaitCategoryEditor : GeneralCategoryEditor
    {
        public WaitCategoryEditor() : base("WaitCategoryEditorTemplate") { }
    }

    internal class AssignResourceCategoryEditor : GeneralCategoryEditor
    {
        public AssignResourceCategoryEditor() : base("AssignResourceCategoryEditorTemplate") { }
    }

    internal class ReleaseResourceCategoryEditor : GeneralCategoryEditor
    {
        public ReleaseResourceCategoryEditor() : base("ReleaseResourceCategoryEditorTemplate") { }
    }


}
