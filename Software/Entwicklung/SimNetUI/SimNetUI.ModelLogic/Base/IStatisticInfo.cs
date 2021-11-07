using SimNetUI.ModelLogic.Base;
namespace SimNetUI.ModelLogic.Activities.ModelProperties.Statistics
{
    interface IStatisticInfo<T>
        where T : StatisticInfoBaseML
    {


        T Statistic
        {
            get;
            set;
        }

    }
}
