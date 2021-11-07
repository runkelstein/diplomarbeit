using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Windows.Design.Interaction;
using System.Windows.Input;

namespace SimNetUI.VisualStudio.Design.Adorner.Tasks
{
    class LineTask : Task
    {

        private ToolCommand lineLeftClickCommand;

        private ToolCommandBinding lineLeftClickCommandBinding;



        public event ExecutedToolEventHandler lineLeftClickedEvent
        {
            add
            {
                lineLeftClickCommandBinding = new ToolCommandBinding(lineLeftClickCommand, value);
                this.ToolCommandBindings.Add(lineLeftClickCommandBinding);
            }
            remove
            {
                if (lineLeftClickCommandBinding != null)
                    this.ToolCommandBindings.Remove(lineLeftClickCommandBinding);
            }
        }






        public LineTask()
        {
            lineLeftClickCommand = new ToolCommand("lineLeftClickCommand");

            this.InputBindings.Add(
                new InputBinding(
                    lineLeftClickCommand,
                    new ToolGesture(ToolAction.Click, MouseButton.Left)));



        }



    }
}
