using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace AutoMih.Tests
{
    [TestClass]
    public class UnitTest1
    {

        //public static  NewService = new Service();

        [TestMethod]
        [ExpectedException(typeof(ServiceException), "Не заполнена цена")]
        public void EmptyCostMethod1()
        {
            var NewService = new Service();
            Core.SaveService(NewService);
            // досюда мы доходить не должны
            Assert.Fail();
        }

        [TestMethod]
        [ExpectedException(typeof(ServiceException), "Скидка должна быть в диапазоне 0..1")]
        public void ValidDiscountMethod()
        {
            var NewService = new Service { Cost=1, Discount=-1 };
            Core.SaveService(NewService);
            Assert.Fail();
        }
        [TestMethod]
        [ExpectedException(typeof(ServiceException), "Не выбрана услгуа")]
        public void TrueDiscountMethod()
        {
            var NewService = new Service { Cost = 1, Discount = 0.5 };
            Core.SaveService(NewService);
            Assert.Fail();
        }
        [TestMethod]
        [ExpectedException(typeof(ServiceException), "Не выбрана услгуа")]
        public void TrueDurationSecondsMethod()
        {
            var NewService = new Service { Cost = 1, Discount = 0.5 };
            Core.SaveService(NewService);
            Assert.Fail();
        }
       


    }
}
