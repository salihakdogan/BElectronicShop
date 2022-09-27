using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BElectronicShop.admin_panel
{
    public partial class urun_guncelle_detay : System.Web.UI.Page
    {
        string[] anakategori = { "Lütfen seçim yapınız", "Telefon", "Televizyon", "Laptop" };
        string[,] marka = new string[4, 4];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 0; i < anakategori.Length; i++)
                {
                    DropDownList1.Items.Add(anakategori[i]);
                }
            }

            if (!IsPostBack)
            {
                string guncelveri = Request.QueryString["guncelle"];
                if (!string.IsNullOrEmpty(guncelveri))
                {
                    UrunCRUD islem = new UrunCRUD();
                    Urun urun = islem.urungoster(guncelveri);
                    
                    DropDownList1.SelectedValue = urun.Urunkateid;
                    DropDownList2.SelectedValue = urun.Marka;
                    TextBox1.Text = urun.Urunadi;
                    TextBox2.Text = Convert.ToString(urun.Ufiyat);

                    if (urun.Ukdv=="%1")
                    {
                        RadioButton1.Checked = true;
                    }
                    if (urun.Ukdv=="%10")
                    {
                        RadioButton2.Checked = true;
                    }
                    if (urun.Ukdv=="%18")
                    {
                        RadioButton3.Checked = true;
                    }

                    if (urun.Parabrm=="Try")
                    {
                        RadioButton4.Checked = true;
                    }
                    if (urun.Parabrm=="Euro")
                    {
                        RadioButton5.Checked = true;
                    }
                    if (urun.Parabrm=="Usd")
                    {
                        RadioButton6.Checked = true;
                    }

                    TextBox3.Text = urun.Ustokid;
                    TextBox4.Text = urun.Ubarkod;
                    TextBox5.Text = Convert.ToString(urun.Ustokadet);
                    TextBox6.Text = Convert.ToString(urun.Kargokg);

                    if (urun.Ustoktur=="Hazır stok")
                    {
                        RadioButton7.Checked = true;
                    }
                    if (urun.Ustoktur=="Yurt dışı")
                    {
                        RadioButton8.Checked = true;
                    }

                    Image1.ImageUrl = urun.Uresim;
                    


                }
                else
                {
                    Response.Redirect("urun_guncelle.aspx");
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            marka[1, 0] = "Apple";
            marka[1, 1] = "Samsung";
            marka[1, 2] = "Xiaomi";

            marka[2, 0] = "Samsung";
            marka[2, 1] = "Lg";

            marka[3, 0] = "Apple";
            marka[3, 1] = "Lenovo";
            marka[3, 2] = "Hp";
            marka[3, 3] = "Asus";

            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Lütfen seçim yapınız");

            if (DropDownList1.SelectedValue == "Telefon")
            {
                DropDownList2.Items.Add(marka[1, 0]);
                DropDownList2.Items.Add(marka[1, 1]);
                DropDownList2.Items.Add(marka[1, 2]);
            }
            if (DropDownList1.SelectedValue == "Televizyon")
            {
                DropDownList2.Items.Add(marka[2, 0]);
                DropDownList2.Items.Add(marka[2, 1]);
            }
            if (DropDownList1.SelectedValue == "Laptop")
            {
                DropDownList2.Items.Add(marka[3, 0]);
                DropDownList2.Items.Add(marka[3, 1]);
                DropDownList2.Items.Add(marka[3, 2]);
                DropDownList2.Items.Add(marka[3, 3]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Urun urun = new Urun();
            UrunCRUD islem = new UrunCRUD();

            urun.Urunkateid = DropDownList1.SelectedValue;
            urun.Marka = DropDownList2.SelectedItem.Text;
            urun.Urunadi = TextBox1.Text;
            urun.Ufiyat = Convert.ToInt32(TextBox2.Text);


            if (RadioButton1.Checked == true)
            {
                urun.Ukdv = RadioButton1.Text;
            }

            if (RadioButton2.Checked == true)
            {
                urun.Ukdv = RadioButton2.Text;
            }

            if (RadioButton3.Checked == true)
            {
                urun.Ukdv = RadioButton3.Text;
            }

            if (RadioButton4.Checked == true)
            {
                urun.Parabrm = RadioButton4.Text;
            }

            if (RadioButton5.Checked == true)
            {
                urun.Parabrm = RadioButton5.Text;
            }

            if (RadioButton6.Checked == true)
            {
                urun.Parabrm = RadioButton6.Text;
            }

            urun.Ustokid = TextBox3.Text;
            urun.Ubarkod = TextBox4.Text;
            urun.Ustokadet = Convert.ToInt32(TextBox5.Text);

            if (RadioButton7.Checked == true)
            {
                urun.Ustoktur = RadioButton7.Text;
            }
            if (RadioButton8.Checked == true)
            {
                urun.Ustoktur = RadioButton8.Text;
            }

            string urunresim = FileUpload1.FileName;
            string urunresimtarih = System.DateTime.Now.ToString("MMddyyyy_HHmmss");
            FileUpload1.SaveAs(Server.MapPath("urunimg/" + urunresimtarih + "_" + urunresim));
            urun.Uresim = "/admin_panel/urunimg/" + urunresimtarih + "_" + urunresim;

            urun.Kargokg = Convert.ToInt32(TextBox6.Text);

            bool cevap = islem.urunguncelle(urun);

            if (cevap == true)
            {
                Label13.Text = ("Güncelleme işlemi başarılı");
            }
            else
            {
                Label13.Text = ("Kayıt işlemi sırasında beklenmeyen bir hata oluştu daha sonra tekrar deneyiniz.");
            }
        }
    }
}