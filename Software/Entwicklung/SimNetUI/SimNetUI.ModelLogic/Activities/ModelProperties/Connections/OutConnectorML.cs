using System.Collections.Generic;

namespace SimNetUI.ModelLogic.Activities.ModelProperties.Connections
{
    public class OutConnectorML : ConnectorML
    {


    
        public List<InConnectorML> Outgoing { get; set; }

        public override bool IsLimitReached
        {
            get
            {
                return Outgoing.Count >= LimitConnections;
            }
        }

        public OutConnectorML()
        {


            Outgoing = new List<InConnectorML>();

        }
    }
}
