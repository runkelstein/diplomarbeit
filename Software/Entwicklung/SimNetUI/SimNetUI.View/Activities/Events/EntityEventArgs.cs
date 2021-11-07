using System;

namespace SimNetUI.Activities.Events
{
    public abstract class EntityEventArgs : EventArgs
    {
        private Entity.Entity _Entity;

        public Entity.Entity Entity
        {
            get { return _Entity; }
        }

        public EntityEventArgs(Entity.Entity entity)
        {
            _Entity = entity;
        }
    }
}