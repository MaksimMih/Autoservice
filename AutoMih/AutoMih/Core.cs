using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace AutoMih
{
    public class ServiceException : Exception
    {
        public ServiceException(string Mesage) : base(Mesage) { }
    }

    public class Core
    {
        public static mmihailovEntities DB = new mmihailovEntities();

        public static void SaveService(Service CurrentService)
        {
            if (CurrentService.Cost <= 0)
            {
                throw new ServiceException("Не заполнена цена");
            }

            if (CurrentService.Discount < 0 || CurrentService.Discount > 1)
            {
                throw new ServiceException("Скидка должна быть в диапазоне 0..1");
            }

            if (CurrentService.Title == null || CurrentService.Title.Trim() == "")
            {
                throw new ServiceException("Нет услуги");
            }
            if (CurrentService.DurationInSeconds < 0)
            {
                throw new ServiceException("Нет времени");
            }


            // если запись новая, то добавляем ее в список
            if (CurrentService.ID == 0)
                DB.Service.Add(CurrentService);

            // сохранение в БД
            DB.SaveChanges();
        }
        
        
    }

}
