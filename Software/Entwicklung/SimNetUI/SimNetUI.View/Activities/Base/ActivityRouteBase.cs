using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SimNetUI.Activities.Events;
using SimNetUI.ModelLogic.Entity;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;
using System.Windows;
using SimNetUI.ModelLogic.Activities.Base;
using SimNetUI.Util;
using SimNetUI.Controls;
using System.Threading;
using SimNetUI.Base;

namespace SimNetUI.Activities.Base
{
    public class ActivityRouteBase : ActivityBase, IEntityLeaving, IEntityRouting
    {
        #region interface Events (IEntityRouting,IEntityLeaving)

        public event EventHandler<EntityRoutingEventArgs> EntityRouted;
        public event EventHandler<EntityLeavingEventArgs> EntityLeft;

        #endregion

        #region ModelLogic interaction


        private int currentRoute = 0;

        /// <summary>
        /// This Method registers to an event used by the ModelLogic.
        /// 
        /// Deriving classes need to override this method
        /// </summary>
        /// <returns></returns>
        protected virtual EntityML InteractionML_ProvideEntityML(OutConnectorML start)
        {
            return currentEntity.ModelLogic;
        }

        /// <summary>
        ///
        /// 
        /// This method may be overriden by deriving classes.
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="entityML"></param>
        /// <param name="ev"></param>
        protected virtual InConnectorML InteractionML_SendEntity(OutConnectorML outConnectorML, EntityML entityML, AutoResetEvent ev)
        {
            // start animation

            // check if provided model is current entity
            if (currentEntity.ModelLogic == entityML)
            {

                // routing
                var idx = 0;
                if (EntityRouted != null)
                {
                    int index = 0;
                    List<ConnectionInfo> targets =
                        (from connection in outConnectorML.Outgoing
                         let activity =
                             (this.Parent as SimulationContainer).ContainsActivity(connection.ParentActivity.Name)
                         select new ConnectionInfo(activity, connection.Name, index++)).ToList();

                    var e = new EntityRoutingEventArgs(currentEntity, targets);
                    EntityRouted(this, e);
                    idx = e.TargetIndex;
                }
                else
                {
                    // if no routing event was registered we circulate
                    // our target
                    idx = currentRoute;

                    if (outConnectorML.Outgoing.Count <= ++currentRoute)
                        currentRoute = 0;
                }


                // sending
                var outConnector = this.OutConnectors[outConnectorML.Name];
                var inConnector = outConnector.Outgoing.ElementAt(idx).Key;
                var activityTarget = inConnector.ParentActivity;


                // update entity leaving timestamp
                currentEntity.ActivityLeft = (this.Parent as SimulationContainer).SimulationTime;

                // fire EntityLeft event
                if (EntityLeft != null)
                {
                    EntityLeft(this, new EntityLeavingEventArgs(currentEntity, activityTarget, inConnector.Name));
                }

                (this.Parent as SimulationContainer).AnimateEntity(inConnector, outConnector, currentEntity,
                                                                   activityTarget, ev);

                currentEntity = null;

                return inConnector.ModelLogic;
            }
            else
            {
                throw new SimNetUIViewException("Provided \"ModelLogic\" does not match with current entity.");
            }
        }

        #endregion


        #region internal Properties (not for use in Xaml)

        private static void OnModelLogicPropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var activity = obj as ActivityRouteBase;
            var activityML = e.NewValue as ActivityRouteBaseML;

            if (activityML != null)
            {
                activityML.ProvideEntity +=
                    RegisterEvent.register<OutConnectorML,EntityML>(activity.InteractionML_ProvideEntityML,activity.Dispatcher);

                // register events
                activityML.Send +=
                    RegisterEvent.registerAsync<OutConnectorML, EntityML, InConnectorML>(
                        activity.InteractionML_SendEntity, activity.Dispatcher);

            }
        }

        private static bool MetaDataInitialized = false;
        internal static void UpdateModelLogicMetaData()
        {
            if (!MetaDataInitialized)
            {
                // By overriding the metadata of this property, the PropertyChangedCallback of the base class 
                // ActivityBase and this class will both be invoked when this property has been changed
                ModelLogicProperty.OverrideMetadata(typeof(ActivityRouteBase),
                                                    new FrameworkPropertyMetadata(OnModelLogicPropertyChanged));
                MetaDataInitialized = true;
            }
        }

        #endregion

    }
}
