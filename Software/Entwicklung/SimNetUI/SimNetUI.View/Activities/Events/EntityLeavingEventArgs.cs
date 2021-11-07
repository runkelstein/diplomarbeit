using SimNetUI.Activities.Base;

namespace SimNetUI.Activities.Events
{
    public class EntityLeavingEventArgs : EntityEventArgs
    {
        public ConnectionInfo Target { get; private set; }

        public EntityLeavingEventArgs(Entity.Entity entity, ActivityBase TargetActivity, string TargetConnectorName)
            : base(entity)
        {
            this.Target = new ConnectionInfo(TargetActivity, TargetConnectorName);
        }
    }
}