using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC_CRUD1.Dal;
using MVC_CRUD1.Models;

namespace MVC_CRUD1.Service
{
    public class UserService
    {
        UserDal ual = new UserDal();

    public int insertUserService(User user)
    {
        return ual.insertUserService(user);
    }

        public List<User> getAllUserList()
        {
            return ual.getAllUserList();
        }
        public List<User> getUserbyId(string edit)
        {
            return ual.getUserbyId(edit);
        }

        public int updateUserService(User user)
        {
            return ual.updateUser(user);
        }

        public int sofrDelete(string delete)
        {
            return ual.sofrDelete(delete);
        }
    }
   
}