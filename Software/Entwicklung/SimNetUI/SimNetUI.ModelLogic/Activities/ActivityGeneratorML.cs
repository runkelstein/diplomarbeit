using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Activities.ModelProperties.Schedule;
using SimNetUI.ModelLogic.Activities.ModelProperties.Statistics;
using SimNetUI.ModelLogic.Base;
using SimNet;

using System.Diagnostics;
using SimNetUI.ModelLogic.Entity;
using SimNetUI.ModelLogic.Activities.ModelProperties.Distributions;

namespace SimNetUI.ModelLogic.Activities
{
    public class ActivityGeneratorML : ActivityRouteBaseML, IStatisticInfo<ActivityGeneratorStatisticInfoML>
    {

        #region Properties
            #region private members
                private uint _EntityMaxCount;
                private ScheduleML _Schedule;
                private ActivityGeneratorStatisticInfoML _Statistic;
            #endregion

            #region property wrappers

                public uint EntityMaxCount
                {
                    get { return _EntityMaxCount; }
                    set { _EntityMaxCount = value; OnPropertyChanged("EntityMaxCount"); }
                }

                public ScheduleML Schedule
                {
                    get { return _Schedule; }
                    set { _Schedule = value; OnPropertyChanged("Schedule"); }
                }

                public ActivityGeneratorStatisticInfoML Statistic
                {
                    get { return _Statistic; }
                    set { _Statistic = value; OnPropertyChanged("Statistic"); }
                }

            #endregion
        #endregion






        #region SimulationLogic

        internal override void RecalculateTimeBasedStatistics(double SimulationTime)
        {
            // nothing to do here
        }


        /// <summary>
        /// A Generator can't receives entitties, therefore this method throws an 
        /// NotImplementedException() whenever it gets called
        /// </summary>
        /// <param name="targetConnectorML"></param>
        /// <param name="startConnectorML"></param>
        /// <param name="entityML"></param>
        internal override void OnReceiveEntity(InConnectorML targetConnectorML, OutConnectorML startConnectorML)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// This method will do a cleanup before a new simulation will
        /// be started
        /// </summary>
        internal override void OnResetActivity()
        {
            Statistic.Reset();

            // this ensures that we will get the same numbers as last time, if a seed was specified
            foreach (var distribution in _Schedule.Content.OfType<ProbabilityDistributionBaseML>())
            {
                distribution.ResetRandomNumberGenerator();
            }

            base.OnResetActivity();
        }



        [TELL]
        public void generate(double t, double priority, params object[] p)
        {

            
            //Exception Handling
            if (Schedule == null)
                throw new SimNetUIModelLogicException("No schedule for Generator " + this.Name + " available. Schedule Object was null");

            if (Schedule.Content.Count == 0)
                throw new SimNetUIModelLogicException("No distributions defined for schedule of Generator " + this.Name);


            // Preperations
            bool interrupt = false;

            // Entity Count
            

            // Fetch first Distribution
            int currentDistribution = 0;
            var distribution = Schedule.Content[currentDistribution];

            // Maxtime for Generator
            double maxtime = this.Schedule.Stop;

            double start = this.Schedule.Start;
            double duration = distribution.ScheduleDuration;

           

            // Simulate


            // wait until simulation time equals start
            try
            {
                Simulation.Wait(start, ref interrupt);
            }
            catch { }


            while (maxtime >= Simulation.SimTime() && this.EntityMaxCount > this.Statistic.DepartedEntities)
            {
                if (this.SimulationParent.CheckIfSimulationIsCanceld())
                {
                    SimulationParent.StopSimulation();
                    return;
                }


                double wait = Math.Abs(distribution.GetNextValue());



                if (maxtime >= Simulation.SimTime() + wait)
                {



                    if (duration >= Simulation.SimTime() + wait)
                    {


                        // Wait for next generation
                        try
                        {
                            Simulation.Wait(wait, ref interrupt);
                        }
                        catch { }


                        // create new Entity
                        var startConnectorML = OutConnectors["Out"];
                        var entityML = GetProvidedEntity(startConnectorML);

                        this.Statistic.DepartedEntities++;

                        // send Entity
                        this.SendEntity(startConnectorML, entityML);



                    }
                    else
                    {
                        // We wait until the time window for the current distribution has passed
                        try
                        {
                            Simulation.Wait(duration - Simulation.SimTime(), ref interrupt);
                        }
                        catch { }

                        if (Schedule.Content.Count > ++currentDistribution)
                        {
                            distribution = Schedule.Content[currentDistribution];
                            duration = distribution.ScheduleDuration;
                        }
                        else
                        {
                            // if there is no next distribution no more events for this generatore will
                            // need to be executed
                            break;
                        }



                    }
                }
                else
                {
                    break;
                }



            }

        }

        #endregion

    }
}
