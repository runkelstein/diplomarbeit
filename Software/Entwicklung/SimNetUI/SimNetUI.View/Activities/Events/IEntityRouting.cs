using System;

namespace SimNetUI.Activities.Events
{
    public interface IEntityRouting
    {
        event EventHandler<EntityRoutingEventArgs> EntityRouted;
    }
}