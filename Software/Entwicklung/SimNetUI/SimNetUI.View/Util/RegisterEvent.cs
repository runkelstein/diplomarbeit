using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Threading;
using System.Threading;
using SimNetUI.ModelLogic.Entity;
using SimNetUI.ModelLogic.Activities.ModelProperties.Connections;

namespace SimNetUI.Util
{
    internal static class RegisterEvent
    {
        #region Synchron

        /// <summary>
        /// This method provides an easy way to ensure that the provided event 
        /// will be executed on the same thread as where the "Dispatcher" object 
        /// was created. It wraps the provided delegate and returns a delegate
        /// of the same type
        /// </summary>
        public static Func<R> register<R>(Func<R> ev, Dispatcher dispatcher)
        {
            var wrapper = (Func<R>) delegate() { return (R) dispatcher.Invoke(ev, null); };

            return wrapper;
        }

        public static Action<T1> register<T1>(Action<T1> ev, Dispatcher dispatcher)
        {
            var wrapper = (Action<T1>) delegate(T1 t) { dispatcher.Invoke(ev, t); };

            return wrapper;
        }

        public static Action<T1, T2> register<T1, T2>(Action<T1, T2> ev, Dispatcher dispatcher)
        {
            var wrapper = (Action<T1, T2>) delegate(T1 t1, T2 t2) { dispatcher.Invoke(ev, t1, t2); };

            return wrapper;
        }

        public static Action<T1, T2, T3> register<T1, T2, T3>(Action<T1, T2, T3> ev, Dispatcher dispatcher)
        {
            var wrapper = (Action<T1, T2, T3>) delegate(T1 t1, T2 t2, T3 t3) { dispatcher.Invoke(ev, t1, t2, t3); };

            return wrapper;
        }

        /// <summary>
        /// This method provides an easy way to ensure that the provided event 
        /// will be executed on the same thread as where the "Dispatcher" object 
        /// was created. It wraps the provided delegate and returns a delegate
        /// of the same type
        /// </summary>
        public static Func<T1, R> register<T1, R>(Func<T1, R> ev, Dispatcher dispatcher)
        {
            var wrapper = (Func<T1, R>) delegate(T1 t1) { return (R) dispatcher.Invoke(ev, t1); };

            return wrapper;
        }

        /// <summary>
        /// This method provides an easy way to ensure that the provided event 
        /// will be executed on the same thread as where the "Dispatcher" object 
        /// was created. It wraps the provided delegate and returns a delegate
        /// of the same type
        /// </summary>
        public static Func<T1, T2, R> register<T1, T2, R>(Func<T1, T2, R> ev, Dispatcher dispatcher)
        {
            var wrapper = (Func<T1, T2, R>) delegate(T1 t1, T2 t2) { return (R) dispatcher.Invoke(ev, t1, t2); };

            return wrapper;
        }

        #endregion

        #region Asynchron

        /// <summary>
        /// This method provides an easy way to ensure that the provided event 
        /// will be executed on the same thread as where the "Dispatcher" object 
        /// was created. It wraps the provided delegate and returns a delegate
        /// of the same type
        /// </summary>
        public static Func<T1, T2, R> registerAsync<T1, T2, R>(Func<T1, T2, AutoResetEvent, R> ev,
                                                                   Dispatcher dispatcher)
        {
            var wrapper = (Func<T1, T2, R>) delegate(T1 t1, T2 t2)
                                                   {
                                                       AutoResetEvent resetEvent = new AutoResetEvent(false);
                                                       var retVal = dispatcher.Invoke(ev, t1, t2, resetEvent);
                                                       resetEvent.WaitOne();
                                                       return (R)retVal;
                                                   };


            return wrapper;
        }

        #endregion
    }
}