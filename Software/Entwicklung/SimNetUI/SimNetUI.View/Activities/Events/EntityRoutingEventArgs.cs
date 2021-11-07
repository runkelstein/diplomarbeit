using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace SimNetUI.Activities.Events
{
    public class EntityRoutingEventArgs : EntityEventArgs
    {
        public ReadOnlyCollection<ConnectionInfo> Targets { get; private set; }
        public int TargetIndex { get; set; }

        public EntityRoutingEventArgs(Entity.Entity entity, List<ConnectionInfo> Targets)
            : base(entity)
        {
            this.Targets = new ReadOnlyCollection<ConnectionInfo>(Targets);
        }
    }
}