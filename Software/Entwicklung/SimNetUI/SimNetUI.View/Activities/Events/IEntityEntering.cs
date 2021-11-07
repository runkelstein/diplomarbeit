using System;

namespace SimNetUI.Activities.Events
{
    public interface IEntityEntering
    {
        event EventHandler<EntityEnteringEventArgs> EntityEntered;
    }
}