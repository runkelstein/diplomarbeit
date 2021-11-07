using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Metadata;

namespace SimNetUI.VisualStudio.Design.Util
{
    internal class PropertyNames
    {
        public class SimulationContainer
        {
            public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Controls.SimulationContainer");
            public static readonly PropertyIdentifier ChildrenProperty = new PropertyIdentifier(TypeId, "Children");
            public static readonly PropertyIdentifier ResourcesProperty = new PropertyIdentifier(TypeId, "Resources");
        }

        public class Entity
        {

        }

        public class Schedule
        {
            public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Schedule.Schedule");
            public static readonly PropertyIdentifier ContentProperty = new PropertyIdentifier(TypeId, "Content");
            public static readonly PropertyIdentifier DurationProperty = new PropertyIdentifier(TypeId, "Duration");
        }

        public class Resource
        {
            public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Resources.Resource");
            public static readonly PropertyIdentifier CapacityProperty = new PropertyIdentifier(TypeId, "Capacity");
        }

        #region Distributions

        public class Fixed : DistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.Fixed");
            public static readonly PropertyIdentifier ValueProperty = new PropertyIdentifier(TypeId, "Value");
        }


        public class NoEvent : DistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.NoEvent");
           
        }

        public class Weibull : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.Weibull");
            public static readonly PropertyIdentifier AlphaProperty = new PropertyIdentifier(TypeId, "Alpha");
            public static readonly PropertyIdentifier BetaProperty = new PropertyIdentifier(TypeId, "Beta");
        }

        public class UniformInt : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.UniformInt");
            public static readonly PropertyIdentifier MinProperty = new PropertyIdentifier(TypeId, "Min");
            public static readonly PropertyIdentifier MaxProperty = new PropertyIdentifier(TypeId, "Max");
        }

        public class Triangular : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.Triangular");
            public static readonly PropertyIdentifier MinProperty = new PropertyIdentifier(TypeId, "Min");
            public static readonly PropertyIdentifier MaxProperty = new PropertyIdentifier(TypeId, "Max");
            public static readonly PropertyIdentifier ModeProperty = new PropertyIdentifier(TypeId, "Mode");
        }
        

        public class Normal : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.Normal");
            public static readonly PropertyIdentifier AlphaProperty = new PropertyIdentifier(TypeId, "Alpha");
            public static readonly PropertyIdentifier BetaProperty = new PropertyIdentifier(TypeId, "Beta");
        }
        

        public class LogNormal : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.LogNormal");
            public static readonly PropertyIdentifier AlphaProperty = new PropertyIdentifier(TypeId, "Alpha");
            public static readonly PropertyIdentifier BetaProperty = new PropertyIdentifier(TypeId, "Beta");
        }

        public class Exponential : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.UI.Activities.Base.PropertyObjects.Distributions.Exponential");
            public static readonly PropertyIdentifier AlphaProperty = new PropertyIdentifier(TypeId, "Alpha");
            
        }

        public class Erlang : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.Erlang");
            public static readonly PropertyIdentifier AlphaProperty = new PropertyIdentifier(TypeId, "Alpha");
            public static readonly PropertyIdentifier BetaProperty = new PropertyIdentifier(TypeId, "Beta");
        }

        public class UniformDouble : ProbabilityDistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.UniformDouble");
            public static readonly PropertyIdentifier MinProperty = new PropertyIdentifier(TypeId, "Min");
            public static readonly PropertyIdentifier MaxProperty = new PropertyIdentifier(TypeId, "Max");
        }


        public class ProbabilityDistributionBase : DistributionBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.ProbabilityDistributionBase");
            public static readonly PropertyIdentifier SeedProperty = new PropertyIdentifier(TypeId, "Seed");
        }

        public class DistributionBase
        {
            public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Distributions.DistributionBase");

        }

        #endregion


        #region Activities

        public class Generator : ActivityBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.Controls.Generator");
            public static readonly PropertyIdentifier ScheduleProperty = new PropertyIdentifier(TypeId, "Schedule");
            public static readonly PropertyIdentifier EntityProperty = new PropertyIdentifier(TypeId, "Entity"); 
        }

        public class ActivityDelayBase : ActivityBase
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.ActivityDelayBase");
            public static readonly PropertyIdentifier DistributionProperty = new PropertyIdentifier(TypeId, "Distribution");
        }

        public class ActivityBase : UIElement
        {
            new public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.ActivityBase");
            public static readonly PropertyIdentifier OutputProperty = new PropertyIdentifier(TypeId, "Output");


            public class Out
            {
                public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Connections.Out");
                public static readonly PropertyIdentifier TargetsProperty = new PropertyIdentifier(TypeId, "Targets");
                public static readonly PropertyIdentifier ConnectorProperty = new PropertyIdentifier(TypeId, "Connector");

                public class Target
                {
                    public static readonly TypeIdentifier TypeId = new TypeIdentifier("SimNetUI.Activities.PropertyObjects.Connections.Target");
                    public static readonly PropertyIdentifier ActivityProperty = new PropertyIdentifier(TypeId, "Activity");
                    public static readonly PropertyIdentifier ConnectorProperty = new PropertyIdentifier(TypeId, "Connector");
                    public static readonly PropertyIdentifier ConnectionVisibilityProperty = new PropertyIdentifier(TypeId, "ConnectionVisibility");
                    public static readonly PropertyIdentifier ConnectionPointsProperty = new PropertyIdentifier(TypeId, "ConnectionPoints");
                }


            }


        }

        public class UIElement
        {
            public static readonly TypeIdentifier TypeId = new TypeIdentifier("System.Windows.UIElement");
            public static readonly PropertyIdentifier VisibilityProperty = new PropertyIdentifier(TypeId, "Visibility");

        }

        #endregion
    }
}
