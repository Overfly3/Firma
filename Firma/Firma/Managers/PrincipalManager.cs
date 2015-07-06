using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Firma.Models;

namespace Firma.Managers
{
    public class PrincipalManager
    {
        public bool IsAdminByUserName(string username)
        {
            bool isAdmin;
            using (var context = new firmaEntities())
            {
                if (context.Users.Any(u => u.Roles.Any(r => r.RoleName == "Admin")))
                {
                    isAdmin = true;
                }
                else
                {
                    isAdmin = false;
                }
            }
            return isAdmin;
        }
    }
}