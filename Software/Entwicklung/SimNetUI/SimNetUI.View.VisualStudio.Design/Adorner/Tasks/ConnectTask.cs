using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Interaction;
using System.Windows.Input;

namespace SimNetUI.VisualStudio.Design.Adorner.Tasks
{
    class ConnectTask : Task
    {

        private ToolCommand beginMove;
        private ToolCommand doMove;
        private ToolCommand endMove;

        private ToolCommandBinding beginMoveCommandBinding;
        private ToolCommandBinding doMoveCommandBinding;
        private ToolCommandBinding endMoveCommandBinding;


        public event ExecutedToolEventHandler MoveEvent
        {
            add
            {
                doMoveCommandBinding = new ToolCommandBinding(doMove, value);
                this.ToolCommandBindings.Add(doMoveCommandBinding);
            }
            remove
            {
                if(doMoveCommandBinding!=null)
                    this.ToolCommandBindings.Remove(doMoveCommandBinding);
            }
        }

        public event ExecutedToolEventHandler BeginMoveEvent
        {
            add
            {
                beginMoveCommandBinding = new ToolCommandBinding(beginMove, value);
                    this.ToolCommandBindings.Add(beginMoveCommandBinding);
            }
            remove
            {
                if (beginMoveCommandBinding != null)
                    this.ToolCommandBindings.Remove(beginMoveCommandBinding);
            }
        }

        public event ExecutedToolEventHandler EndMoveEvent
        {
            add
            {
                endMoveCommandBinding = new ToolCommandBinding(endMove, value);
                this.ToolCommandBindings.Add(endMoveCommandBinding);
            }
            remove
            {
                if (endMoveCommandBinding != null)
                    this.ToolCommandBindings.Remove(endMoveCommandBinding);
            }
        }



        public ConnectTask()
        {
            
            beginMove = new ToolCommand("BeginMove");
            doMove = new ToolCommand("DoMove");
            endMove = new ToolCommand("EndMove");

            this.InputBindings.Add(
                new InputBinding(
                    beginMove,
                    new ToolGesture(ToolAction.Down, MouseButton.Left)));

            this.InputBindings.Add(
                new InputBinding(
                    endMove,
                    new ToolGesture(ToolAction.Up, MouseButton.Left)));

            this.InputBindings.Add(
                new InputBinding(
                    doMove,
                    new ToolGesture(ToolAction.Move)));

        }


    }
}
