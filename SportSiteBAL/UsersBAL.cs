using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SportSiteDAL;

namespace SportSiteBAL
{
   public class UsersBAL
    {

       Users _user = new Users();
       /// <summary>
       /// Validate user 
       /// </summary>
       /// <param name="username"></param>
       /// <param name="password"></param>
       /// <returns></returns>
       public bool ValidateUser(string username, string password)
       {
           return  _user.ValidateUser(username, password);
       }

    }
}
