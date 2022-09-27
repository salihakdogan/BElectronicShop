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
using System.Data;

namespace BElectronicShop
{
    public partial class musterikayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random rnddkod = new Random();
            int dkod = rnddkod.Next(100000, 999999);

            Musteri yenimusteri = new Musteri();
            MusteriCRUD yenimusteriCRUD = new MusteriCRUD();

            yenimusteri.Mail = TextBox1.Text;
            yenimusteri.Tc = TextBox2.Text;
            yenimusteri.Kadi = TextBox3.Text;
            yenimusteri.Ad = TextBox4.Text;
            yenimusteri.Soyad = TextBox5.Text;
            yenimusteri.Sifre = TextBox6.Text;
            yenimusteri.Dkod = dkod.ToString();
            yenimusteri.Durum = 0;

            bool cevap = yenimusteriCRUD.kayit(yenimusteri);

            if (cevap==true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "kayitbasarili", "kayitbasarili()", true);
                Button2.Visible = true;

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "kayitbasarisiz", "kayitbasarisiz()", true);
            }

            string to = TextBox1.Text; //kime mail gidecek
            string from = "xxx"; //bizim mail adreismiz

            MailMessage message = new MailMessage(from, to);

            string mailbody = "Sayın " + TextBox4.Text +" "+ TextBox5.Text + " BElectronicShop'e Hoş Geldiniz! Kaydınızı tamamlamak için doğrulama kodunuz: " + dkod;
            message.Subject = "Sayın @"+TextBox3.Text+ " kullanıcı adlı yeni üyemiz. BElectronicShop Doğrulama Mailiniz";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp-mail.outlook.com", 587); //hotmail smtp
            System.Net.NetworkCredential basicCredential = new
            System.Net.NetworkCredential("xxx", "xxx"); //gonderen mail adresi şifresi 
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("musteridogrulama.aspx?mail="+TextBox1.Text);
        }
    }
}