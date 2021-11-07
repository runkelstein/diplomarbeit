using System;

namespace SimNetUI.Activities.Events
{
    public interface IEntityLeaving
    {
        event EventHandler<EntityLeavingEventArgs> EntityLeft;
    }
}