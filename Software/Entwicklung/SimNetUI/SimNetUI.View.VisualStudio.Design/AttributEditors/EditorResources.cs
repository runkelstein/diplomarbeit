using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;

using System.Windows.Controls;
using Microsoft.Windows.Design.PropertyEditing;
using System.Windows.Data;
using SimNetUI.VisualStudio.Design.AttributEditors.ValueConverter;


namespace SimNetUI.VisualStudio.Design.AttributeEditors
{
    internal partial class EditorResources : ResourceDictionary
    {
        public EditorResources()
            : base()
        {
            InitializeComponent();
        }

        public void Distribution_Selection_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {

            var combo = sender as ComboBox;

            BindingOperations.SetBinding(combo, ComboBox.SelectedValueProperty,
                new Binding
                {
                    Source = combo.DataContext,
                    Path = new PropertyPath("[Distribution].PropertyValue.Value"),
                    Converter = new ComboBoxDistributionTypeConverter(combo)
                });


        }

    }
}
