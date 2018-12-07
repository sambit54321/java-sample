using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace e_auction
{
    public static class Crypt
    {
       
        public static string Encrypt(this string mystring)
        {
            string key = "mykey";
            SecurityAES.AES cryptAES = new SecurityAES.AES();
            return cryptAES.Encrypt(mystring, key);
        }
        public static string Decrypt(this string mystring)
        {
            string key = "mykey";
            SecurityAES.AES cryptAES = new SecurityAES.AES();
            return cryptAES.Decrypt(mystring, key);
        }
    }
}