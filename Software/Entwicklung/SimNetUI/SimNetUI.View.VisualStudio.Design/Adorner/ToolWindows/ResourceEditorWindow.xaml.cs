using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Microsoft.Windows.Design.Model;
using SimNetUI.Resources;
using SimNetUI.VisualStudio.Design.Util;
using Microsoft.Windows.Design;

namespace SimNetUI.VisualStudio.Design.Adorner.ToolWindows
{

    public partial class ResourceEditorWindow : Window
    {




        private List<ResourceContainer> SimResources;
        private ModelProperty ResourceProperty;

        public ModelItem ControlModel
        {
            set
            {
                
                ResourceProperty = value.Properties[PropertyNames.SimulationContainer.ResourcesProperty];

                invalidateEntries();

                

            }
        }

        private void invalidateEntries() {

            SimResources = new List<ResourceContainer>();


            foreach (var item in ResourceProperty.Dictionary)
                if (item.Value.ItemType == typeof(Resource))
                    SimResources.Add(new ResourceContainer(item, ResourceProperty));

            DataContext = SimResources;

        }

        public ResourceEditorWindow()
        {

            InitializeComponent();

 
        }

        void NewCmdCanExecute(object sender, CanExecuteRoutedEventArgs e)
        {

            e.CanExecute = tbnTextbox.Text.Length>0 && 
                           (from r in SimResources where r.Name==tbnTextbox.Text select r).Count()==0;
        }

        void NewCmdExecuted(object target, ExecutedRoutedEventArgs e)
        {
            // create new entry
            var newResource = ModelFactory.CreateItem(ResourceProperty.Value.Context, typeof(Resource));
            var newKey = ModelFactory.CreateItem(ResourceProperty.Value.Context, tbnTextbox.Text);

            // add new entry
            ResourceProperty.Dictionary.Add(newKey, newResource);

            invalidateEntries();
        }

        void DeleteCmdCanExecute(object sender, CanExecuteRoutedEventArgs e)
        {

            e.CanExecute = ResourceDataGrid.SelectedItems.Count > 0;
        }

        void DeleteCmdExecuted(object sender, ExecutedRoutedEventArgs e)
        {

            foreach (var info in ResourceDataGrid.SelectedCells)
            {
                (info.Item as ResourceContainer).RemoveFromResourceDictionary();
            }

            invalidateEntries();
        }



    }
}
