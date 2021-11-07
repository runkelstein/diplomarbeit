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
using System.Windows.Navigation;
using System.Windows.Shapes;
using SimNetUI.Activities.Controls;

namespace Example.MarketPlace
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Random r;
        private Image[] images_people;
        private Image image_ShoppingCart;

        public MainWindow()
        {
            r = new Random(1);
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            images_people = new Image[5];
            for (int i = 1; i < 6; i++)
                images_people[i-1] = (Image)this.Resources["Img_Person" + i];

            image_ShoppingCart = (Image)this.Resources["Img_ShoppingCart"];
        }


        private void generator1_EntityLeft(object sender, SimNetUI.Activities.Events.EntityLeavingEventArgs e)
        {
            var idx = r.Next(5);
            
            e.Entity.VisualAppearance = 
                new Image { 
                    Source = images_people[idx].Source, 
                    Height=images_people[idx].Height, 
                    Width=images_people[idx].Width 
               };

        }

        private void assignResource1_EntityLeft(object sender, SimNetUI.Activities.Events.EntityLeavingEventArgs e)
        {
            //<Canvas Canvas.Left="45" Canvas.Top="252">
            //    <Image Source="person1.png" Height="50" Width="50" />
            //    <Image Canvas.Left="40" Canvas.Top="10"  Source="shopping_cart.png" Height="40" Width="40" />
            //</Canvas>


            var img_person = e.Entity.VisualAppearance as Image;

            if (img_person != null)
            {


                var img_cart = new Image
                                {
                                    Source = image_ShoppingCart.Source,
                                    Height = image_ShoppingCart.Height,
                                    Width = image_ShoppingCart.Width
                                };

                var canvas = new Canvas { Height=50, Width=85 };
                canvas.Children.Add(img_person);
                canvas.Children.Add(img_cart);

                Canvas.SetLeft(img_person, 0.0);
                Canvas.SetTop(img_person, 0.0);

                Canvas.SetLeft(img_cart, 40.0);
                Canvas.SetTop(img_cart, 20.0);

                canvas.FlowDirection = System.Windows.FlowDirection.LeftToRight;

                e.Entity.VisualAppearance = canvas;


            }

        }

        private void releaseResource1_EntityLeft(object sender, SimNetUI.Activities.Events.EntityLeavingEventArgs e)
        {
            var canvas = e.Entity.VisualAppearance as Canvas;

            if (canvas == null) return;

            var img = canvas.Children[0] as Image;

            // its importent to remove this child here, because
            // it can only be a children of one element at a time
            canvas.Children.Remove(img);

            if (img == null) return;

            e.Entity.VisualAppearance = img;
        }

        private void wait1_EntityRouted(object sender, SimNetUI.Activities.Events.EntityRoutingEventArgs e)
        {
            // find lowest value for entities in queue
            var minInQueue = e.Targets.Min((target) => target.GetActivity<Wait>().Statistics.InQueue + target.GetActivity<Wait>().Statistics.InWork);

            // select activities which meets minInQueue requirement
            var selection = (from target in e.Targets
                             where target.GetActivity<Wait>().Statistics.InQueue + target.GetActivity<Wait>().Statistics.InWork == minInQueue
                             select target).ToArray();

            // choose random target
            e.TargetIndex = selection[r.Next(selection.Count())].index;
        }
    }
}
