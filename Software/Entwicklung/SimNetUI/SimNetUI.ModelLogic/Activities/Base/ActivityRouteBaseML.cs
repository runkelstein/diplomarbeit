using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using SimNetUI.ModelLogic.Entity;
using SimNetUI.ModelLogic.Base;

namespace SimNetUI.ModelLogic.Activities.Base
{
    abstract public class ActivityRouteBaseML : ActivityBaseML
    {



        #region Interaction

        public event Func<OutConnectorML, EntityML,InConnectorML> Send;
        public event Func<OutConnectorML, EntityML>  ProvideEntity;

        internal EntityML GetProvidedEntity(OutConnectorML start)
        {
            if (ProvideEntity != null)
            {
                return ProvideEntity(start);
            }
            else
            {
                throw new SimNetUIModelLogicException("The event ProvideEntity has no suscribers for activity " + this.Name + "");
            }

        }

        /// <summary>
        /// Send an entity to another activity. This method normaly gets called by a Tell-Method
        /// </summary>
        /// <remarks>
        /// The main task of this method is to send an entity to another activity. Since this action will be
        /// animated this method invokes a delegate on the UI thread to initialize the animation. It then waits for a signal
        /// of the UI thread before it continues to work. The UI thread will send the expected
        /// signal after the render thread has completed
        /// the animation.
        /// 
        /// Before the animation starts the simulation will be notified about the passed time. 
        /// This ensures that this information is forwared to the view. In future versions, its advised to
        /// use the INotifyPropertyChanged interface for this task, therfore changes for the SimNet library
        /// will be neccessary.
        /// 
        /// </remarks>
        /// <param name="targetConnectorML"></param>
        /// <param name="startConnectorML"></param>
        /// <param name="entityML"></param>
        protected void SendEntity(OutConnectorML startConnectorML, EntityML entityML)
        {


            // check if simulation has to be canceled, if not proceed
            if (!this.SimulationParent.CheckIfSimulationIsCanceld())
            {

                // Notify about passage of time
                SimulationParent.NotifySimulationTimeChanged();

                // send entity to target
                var targetConnectorML = Send(startConnectorML, entityML);

                // target activity receives entity and can act now
                targetConnectorML.ParentActivity.OnReceiveEntity(targetConnectorML, startConnectorML);

                // after the animation has finished another check for the end of the simulation is neccessary
                if (this.SimulationParent.CheckIfSimulationIsCanceld())
                {
                    SimulationParent.StopSimulation();
                    return;
                }

            }
            else
            {
                SimulationParent.StopSimulation();
            }




        }

        #endregion


    }
}
