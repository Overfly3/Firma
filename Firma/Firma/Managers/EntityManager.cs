using Firma.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Firma.Managers
{
    public class EntityManager
    {
        public List<projekt> GetProjects()
        {
            List<projekt> projects = new List<projekt>();
            using (var context = new firmaEntities())
            {
                projects.AddRange(context.projekt.ToList());
            }
            return projects;
        }
    }
}