using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using SecurityUtility;

namespace e_auction
{
    public static class securityUtil
    {

        static SecurityHelper security = new SecurityHelper();

        public static string Encode(this string myString)
        {
            string key = "mykey";
            SecurityAES.AES cryptAES = new SecurityAES.AES();
            return cryptAES.Encrypt( myString, key);
        }

        public static string Decode(this string myString)
        {
            string key = "mykey";
            SecurityAES.AES cryptAES = new SecurityAES.AES();
            return cryptAES.Decrypt(myString, key);
        }

    }
}