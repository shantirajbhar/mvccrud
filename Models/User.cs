using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_CRUD1.Models
{
    public class User
    {
        public int  id { get; set; }
        public string fname { get; set; }
        public string lname { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string city { get; set; }
        public string add { get; set; }
        public string active { get; set; }

    }
}