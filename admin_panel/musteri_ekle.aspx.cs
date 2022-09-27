using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BElectronicShop.admin_panel
{
    public partial class musteri_ekle : System.Web.UI.Page
    {
        Sifrele sifrele = new Sifrele();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Musteri ymusteri = new Musteri();
            MusteriCRUD ymusteriCRUD = new MusteriCRUD();

            ymusteri.Tc = TextBox1.Text;
            ymusteri.Kadi = TextBox2.Text;
            ymusteri.Ad = TextBox3.Text;
            ymusteri.Soyad = TextBox4.Text;
            ymusteri.Sifre = sifrele.Encrypt(TextBox5.Text);
            ymusteri.Mail = TextBox7.Text;

            bool cevap = ymusteriCRUD.kayit(ymusteri);

            if (cevap==true)
            {
                Label1.Text = ("Kayıt işlemi başarılı");
            }
            else
            {
                Label1.Text = ("Kayıt işlemi sırasında hata oluştu daha sonra tekrar deneyiniz.");
            }         
        }
    }
}