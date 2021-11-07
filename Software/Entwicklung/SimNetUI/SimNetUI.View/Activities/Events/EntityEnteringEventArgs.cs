using SimNetUI.Activities.Base;

namespace SimNetUI.Activities.Events
{
    public class EntityEnteringEventArgs : EntityEventArgs
    {
        public ConnectionInfo Sources { get; private set; }


        public EntityEnteringEventArgs(Entity.Entity entity, ActivityBase SourceActivity, string SourceConnectorName)
            : base(entity)
        {
            Sources = new ConnectionInfo(SourceActivity, SourceConnectorName);
        }
    }
}