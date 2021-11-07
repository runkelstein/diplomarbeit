using System;
using System.Linq;
using System.Windows.Markup;
using System.Windows;
using System.Windows.Shapes;
using System.Windows.Media;
using System.ComponentModel;
using SimNetUI.ModelLogic.Activities.ModelProperties.Resources;
using SimNetUI.ModelLogic.Entity;
using System.Windows.Data;
using System.Collections.ObjectModel;
using SimNetUI.Activities.PropertyObjects.Resources;
using System.Xml;
using System.IO;

namespace SimNetUI.Entity
{
    /// <summary>
    /// The Entity-Class is implemented as DependencyObject with DependencyProperties.
    /// This design was choosen because this makes it possible to include entities in the model
    /// as an initial state and leverage all functionalities which are common in the wpf
    /// </summary>
    [ContentProperty("VisualAppearance")]
    public class Entity : DependencyObject
    {
        #region internal (reference to modell)

        internal static readonly DependencyProperty VisualAppearanceCopyProperty =
            DependencyProperty.Register("VisualAppearanceCopy", typeof(FrameworkElement), typeof(Entity)
                );

        internal FrameworkElement VisualAppearanceCopy
        {
            get
            {
                return (FrameworkElement)GetValue(VisualAppearanceCopyProperty);
            }
            set
            {
                SetValue(VisualAppearanceCopyProperty, value);
            }
        }



        internal static readonly DependencyProperty ModelLogicProperty =
            DependencyProperty.Register("ModelLogic",
                                        typeof (EntityML), typeof (Entity),
                                        new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));

        [Browsable(false)]
        internal EntityML ModelLogic
        {
            get { return (EntityML) GetValue(ModelLogicProperty); }
            set { SetValue(ModelLogicProperty, value); }
        }

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var entity = obj as Entity;
            var entityML = e.NewValue as EntityML;


            if (entityML != null)
            {
                // Copy user values, so that they dont get overriden after
                // initial binding
                entityML.ID = entity.ID;
                entityML.Priority = entity.Priority;
                entityML.Type = entity.Type;

                // set up binding
                BindingOperations.SetBinding(entity, Entity.IDProperty,
                                             new Binding
                                                 {
                                                     Mode = BindingMode.TwoWay,
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Path = new PropertyPath("ModelLogic.ID")
                                                 }
                    );

                BindingOperations.SetBinding(entity, Entity.TypeProperty,
                                             new Binding
                                                 {
                                                     Mode = BindingMode.TwoWay,
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Path = new PropertyPath("ModelLogic.Type")
                                                 }
                    );

                BindingOperations.SetBinding(entity, Entity.PriorityProperty,
                                             new Binding
                                                 {
                                                     Mode = BindingMode.TwoWay,
                                                     RelativeSource = new RelativeSource(RelativeSourceMode.Self),
                                                     Path = new PropertyPath("ModelLogic.Priority")
                                                 }
                    );

                if (entity.ResourceDependencies != null)
                {
                    var tempList = (from resource in entity.ResourceDependencies
                                    select resource.ModelLogic).ToList();

                    entityML.ResourceDependencies =
                        new ReadOnlyCollection<ResourceDependencyML>(tempList);
                }
            }
        }

        #endregion

        #region Properties

        public static readonly DependencyProperty VisualAppearanceProperty =
            DependencyProperty.Register("VisualAppearance", typeof (FrameworkElement), typeof (Entity),
                                        new FrameworkPropertyMetadata(OnVisualAppearanceChanged)
                );

        public FrameworkElement VisualAppearance
        {
            get
            {
                var e = GetValue(VisualAppearanceProperty) as FrameworkElement;
                if (e == null)
                {
                    Ellipse ellipse =
                        new Ellipse
                            {
                                Fill = Brushes.Red,
                                Width = 15,
                                Height = 15
                            };

                    SetValue(VisualAppearanceProperty, ellipse);
                    return ellipse;
                }
                else
                {
                    return e;
                }
            }
            set { SetValue(VisualAppearanceProperty, value); }
        }

        /// <summary>
        /// Clone visual appearance, this copy will be usefull for the queue companion.
        /// This only works at runtime.
        /// </summary>
        /// <param name="obj"></param>
        /// <param name="e"></param>
        private static void OnVisualAppearanceChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var entity = obj as Entity;
            var appearance = e.NewValue as FrameworkElement;


            if (appearance != null && !DesignerProperties.GetIsInDesignMode(obj))
            {
                //clone Visual
                string xamlCode = XamlWriter.Save(appearance);
                entity.VisualAppearanceCopy =
                    XamlReader.Load(new XmlTextReader(new StringReader(xamlCode))) as FrameworkElement;
            }
        }


        public static readonly DependencyProperty PriorityProperty =
            DependencyProperty.Register("Priority", typeof (uint), typeof (Entity),
                                        new FrameworkPropertyMetadata(0U)
                );

        public uint Priority
        {
            get { return (uint) GetValue(PriorityProperty); }
            set { SetValue(PriorityProperty, value); }
        }

        public static readonly DependencyProperty IDProperty =
            DependencyProperty.Register("ID", typeof (ulong), typeof (Entity),
                                        new FrameworkPropertyMetadata(0UL)
                );

        public ulong ID
        {
            get { return (ulong) GetValue(IDProperty); }
            set { SetValue(IDProperty, value); }
        }


        public static readonly DependencyProperty TypeProperty =
            DependencyProperty.Register("Type", typeof (string), typeof (Entity),
                                        new FrameworkPropertyMetadata("Entity")
                );


        public string Type
        {
            get { return (string) GetValue(TypeProperty); }
            set { SetValue(TypeProperty, value); }
        }

        
        public static readonly DependencyProperty ActivityEnteredProperty =
            DependencyProperty.Register("ActivityEntered", typeof (double), typeof (Entity),
                                        new FrameworkPropertyMetadata(0.0)
                );

        public static readonly DependencyProperty ActivityLeftProperty =
            DependencyProperty.Register("ActivityLeft", typeof (double), typeof (Entity),
                                        new FrameworkPropertyMetadata(0.0)
                );

        [Browsable(false)]
        public double ActivityEntered
        {
            get { return (double) GetValue(ActivityEnteredProperty); }
            internal set { SetValue(ActivityEnteredProperty, value); }
        }

        [Browsable(false)]
        public double ActivityLeft
        {
            get { return (double) GetValue(ActivityLeftProperty); }
            internal set { SetValue(ActivityLeftProperty, value); }
        }

        public static readonly DependencyProperty ResourceDependenciesProperty =
            DependencyProperty.Register("ResourceDependencies", typeof (FreezableCollection<ResourceDependency>),
                                        typeof (Entity));

        [Browsable(false)]
        public FreezableCollection<ResourceDependency> ResourceDependencies
        {
            get { return (FreezableCollection<ResourceDependency>) GetValue(ResourceDependenciesProperty); }
            set { SetValue(ResourceDependenciesProperty, value); }
        }

        #endregion

        #region common

        public Entity()
        {
            ModelLogic = new EntityML();
            SetValue(ResourceDependenciesProperty, new FreezableCollection<ResourceDependency>());
            ResourceDependencies.Changed += OnContentChanged;
        }


        private void OnContentChanged(object sender, EventArgs e)
        {
            var tempList = (from resource in ResourceDependencies
                            select resource.ModelLogic).ToList();

            ModelLogic.ResourceDependencies =
                new ReadOnlyCollection<ResourceDependencyML>(tempList);
        }

        #endregion
    }
}