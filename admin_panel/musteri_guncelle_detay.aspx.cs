using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BElectronicShop.admin_panel
{
    public partial class musteri_guncelle_detay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string guncelveri = Request.QueryString["guncelle"];
                if (!string.IsNullOrEmpty(guncelveri))
                {
                    MusteriCRUD islem = new MusteriCRUD();
                    Musteri musteri = islem.musterigoster(guncelveri);
                    TextBox1.Text = musteri.Tc;
                    TextBox2.Text = musteri.Kadi;
                    TextBox3.Text = musteri.Ad;
                    TextBox4.Text = musteri.Soyad;
                    TextBox5.Text = musteri.Mail;
                }
                else
                {
                    Response.Redirect("musteri_guncelle.aspx");
                }
            }         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MusteriCRUD musterikadi = new MusteriCRUD();
            bool cevap = musterikadi.musteriguncellemekadi(TextBox2.Text);
            if (cevap)
            {
                Label7.Text = "Bu kullanıcı adı kullanımda.";
            }
            else
            {
                Label7.Visible = false;
                MusteriCRUD islem = new MusteriCRUD();
                Musteri musteri = new Musteri();

                musteri.Tc = TextBox1.Text;
                musteri.Kadi = TextBox2.Text;
                musteri.Ad = TextBox3.Text;
                musteri.Soyad = TextBox4.Text;
                musteri.Mail = TextBox5.Text;

                bool cevap2 = islem.musteriguncelle(musteri);

                if (cevap2 == true)
                {
                    gnclbilgi.Visible = true;
                }
            }
        }
    }
}