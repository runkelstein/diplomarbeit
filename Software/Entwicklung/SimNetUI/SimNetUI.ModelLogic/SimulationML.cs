using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Base;
using System.Collections.ObjectModel;
using SimNetUI.ModelLogic.Activities.Base;


using SimNetUI.ModelLogic.Activities;
using SimNet;
using System.Diagnostics;


namespace SimNetUI.ModelLogic
{
    public class SimulationML : ModelLogicBase
    {


        #region Interaction

        public event Func<Boolean> SimulationCancelCheck;
        public event Action CancelSimulation;

        internal Boolean CheckIfSimulationIsCanceld()
        {
            return SimulationCancelCheck();
        }

        #endregion


        #region Properties

        #region private members
            private ReadOnlyCollection<ActivityBaseML> _Activities;
            private double _SimulationStopTime;
        #endregion

        #region Property Wrappers

        public ReadOnlyCollection<ActivityBaseML> Activities
            {
                get
                {
                    return _Activities;
                }
                set
                {
                    _Activities = value;

                    // set a reference to this Simulation Modell to all activities
                    foreach (var activity in _Activities)
                    {
                        activity.SimulationParent = this;
                    }


                    OnPropertyChanged("Activities");
                }
            }

        public double SimulationTime
        {
            get { return Simulation.SimTime(); }
        }

        public double SimulationStopTime
        {
            get { return _SimulationStopTime; }
            set { _SimulationStopTime = value; OnPropertyChanged("SimulationStopTime"); }
        }

        #endregion

        #region Util methods

        /// <summary>
        /// Since there is no way to set the property "SimulationTime" there needs to be another
        /// mechanism to notify a change. This is done by this method. This method gets called
        /// whenever SimulationTime has passed. Usualy it gets called by the method SendEntity of an instance of
        /// ActivityBaseML before the animation of an entity starts.
        /// </summary>
        public void NotifySimulationTimeChanged()
        {
           
            // recalculate time based statistics
            var simTime = Simulation.SimTime();
            foreach (var activity in Activities)
            {
                activity.RecalculateTimeBasedStatistics(simTime);
            }

            OnPropertyChanged("SimulationTime");

        }

        #endregion

        #endregion


        #region UtilMethods


        /// <summary>
        /// This method checks, if this control contains a activity with the specified name
        /// and if so, returns the activity
        /// </summary>
        /// <param name="name">The name of the DependencyObject we are looking for</param>
        /// <returns>The activity which the caller of this method was looking for, otherwise null</returns>
        internal ActivityBaseML ContainsActivity(string name)
        {
            return (from activityML in Activities
                    where activityML.Name == name
                    select activityML).First();
        }

        #endregion


        public SimulationML()
        {
            
        }

        #region Simulation Logic

        [TELL]
        public void OnStopSimulationTime(double t, double priority, params object[] p)
        {
            StopSimulation();
            
        }

        //[Conditional("ENHANCE")]
        public void StartSimulation()
        {

            // Register Simulation Stop Method if a stop time was specified
            if (!Double.IsInfinity(SimulationStopTime) && !Double.IsNaN(SimulationStopTime) && SimulationStopTime >= 0)
            {
                // this method gets highest possible priority, therefore it should be called first
                Simulation.Tell(this.OnStopSimulationTime, SimulationStopTime, double.MaxValue, null);
            }
                
            
            foreach (var activity in Activities)
            {
                // Register Generator Tell Methods
                var generator = activity as ActivityGeneratorML;
                if (generator != null)
                {

                    Simulation.Tell(generator.generate, 0, 0, null);
                }

                // Set activities to initial state
                activity.OnResetActivity();

            }


            SimulationHasStoped = false;

            // Start Simulation
            Simulation.StartSimulation();

            StopSimulation();

        }

        private bool SimulationHasStoped;
        
        public void StopSimulation()
        {

            if (!SimulationHasStoped)
            {
                // Stop Simulation
                CancelSimulation();
                Simulation.StopSimulation();
                SimulationHasStoped = true;
                NotifySimulationTimeChanged();
            }

        }

        #endregion

    }
}
