using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Threading;
using System.Web;

/// <summary>
/// Summary description for clsCommon
/// </summary>
public class clsCommon
{
    public clsCommon()
    {
        //
        // TODO: Add constructor logic here
        //
    } 
    public static string getConnectionString()
    {
        return System.Configuration.ConfigurationManager.AppSettings["Connection"];
    }
    public static void SendMail( string tomail, string Bodyhtml, string subject,string buyermail)
    {
        string smtpUserName = System.Configuration.ConfigurationManager.AppSettings["SmtpUserName"].ToString();
        string smtpPassword = System.Configuration.ConfigurationManager.AppSettings["SmtpPassword"].ToString();
        string smtpServer = System.Configuration.ConfigurationManager.AppSettings["SmtpIP"].ToString();

        SmtpClient client = new SmtpClient();
        client.Host = smtpServer;
        client.Port = 587;

        
        MailMessage objEmail = new MailMessage();
        objEmail.From = new MailAddress(smtpUserName, "Ebex Ebid Tender");
        objEmail.To.Add(tomail);
        string ccmail = buyermail;

        //string target = ConfigurationManager.AppSettings["SmtpTargetName"].ToString();
        //if (target != "")
        //    client.TargetName = target;

        //objEmail.Bcc.Add(ConfigurationSettings.AppSettings["BCCEmail"].ToString());
        if (ccmail != "")
            objEmail.CC.Add(ccmail);
        
        objEmail.Subject = subject;
        objEmail.Body = Bodyhtml;
        objEmail.IsBodyHtml = true;
        System.Net.NetworkCredential basicAuthenticationInfo = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
        client.Credentials = basicAuthenticationInfo;
        client.EnableSsl = true;

        try
        {
            new Thread(() => { client.Send(objEmail); }).Start();
        }
        catch (Exception EX)
        {
        }
    }
    public static void SendMailWithAttachment(string FromEmail , string Toemail, string Bodyhtml, string  subject, string sAttachment)
    {
        string smtpUserName = System.Configuration.ConfigurationManager.AppSettings["SmtpUserName"].ToString();
        string smtpPassword = System.Configuration.ConfigurationManager.AppSettings["SmtpPassword"].ToString();
        string smtpServer = System.Configuration.ConfigurationManager.AppSettings["SmtpIP"].ToString();

        FromEmail = smtpUserName;
        SmtpClient client = new SmtpClient(smtpServer);
        MailMessage objEmail = new MailMessage();
        objEmail.From = new MailAddress(FromEmail, "Ebex");
        objEmail.To.Add(Toemail);
        objEmail.Subject = subject;
        objEmail.Body = Bodyhtml;
        objEmail.IsBodyHtml = true;
        if (sAttachment.Trim() != "")
            objEmail.Attachments.Add(new System.Net.Mail.Attachment(System.Web.HttpContext.Current.Server.MapPath("~/EBEX-Resume") + "/" + sAttachment));

        string ccmail = System.Configuration.ConfigurationManager.AppSettings["ccMailid"].ToString();      
        if (ccmail != "")
            objEmail.CC.Add(ccmail);

        //string target = ConfigurationManager.AppSettings["SmtpTargetName"].ToString();
        //if (target != "")
        //    client.TargetName = target;

        client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
        client.EnableSsl = true;

        try
        {
            client.Send(objEmail);
        }
        catch (System.Net.Mail.SmtpException ex)
        {

        }
    }
}