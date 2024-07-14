using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace login
{
    public class class2
    {
        private static string nationalid ;
        private static string fullname;
        private static string phonenumber;
        private static string passno;
      

        public static string First
        {
            get { return class2.nationalid; }
            set { class2.nationalid = value; }
        }

        public static string Fullname
        {
            get { return class2.fullname; }
            set { class2.fullname = value; }
        }



        public static string Phone
        {
            get { return class2.phonenumber; }
            set { class2.phonenumber = value; }
        }
        public static string Passno
        {
            get { return class2.passno; }
            set { class2.passno = value; }
        }
     

    }
}