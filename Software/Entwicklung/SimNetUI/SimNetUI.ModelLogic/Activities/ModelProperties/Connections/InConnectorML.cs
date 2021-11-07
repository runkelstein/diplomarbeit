using System.Collections.Generic;

namespace SimNetUI.ModelLogic.Activities.ModelProperties.Connections
{
    public class InConnectorML : ConnectorML
    {




        public List<OutConnectorML> Incomming { get; set; }



        public override bool IsLimitReached
        {
            get
            {
                return Incomming.Count >= LimitConnections;
            }
        }

        public InConnectorML()
        {


            Incomming = new List<OutConnectorML>();

        }
    }
}
