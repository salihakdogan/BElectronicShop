using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace BElectronicShop.deneme
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string to = "erencasper16@gmail.com"; //kime mail gidecek
            string from = "salih_akdogan1@hotmail.com"; //bizim mail adreismiz

            MailMessage message = new MailMessage(from, to);

            string mailbody = "Projeni teslim etmeyi unutma";
            message.Subject = "deneme maili";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp-mail.outlook.com", 587); //hotmail smtp
            System.Net.NetworkCredential basicCredential = new 
            System.Net.NetworkCredential("salih_akdogan1@hotmail.com", "xoolwave2k19"); //gonderen mail adresi şifresi 
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential;

            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }           
        }
    }
}