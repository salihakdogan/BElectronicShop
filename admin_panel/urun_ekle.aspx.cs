using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; //dosya dizin işlemleri sınıf ve metotlar

namespace BElectronicShop.admin_panel
{
    public partial class urun_ekle : System.Web.UI.Page
    {             
        
        string[] anakategori = { "Lütfen seçim yapınız","Telefon", "Televizyon", "Laptop" };
        string[,] marka = new string [4, 4];
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 0; i < anakategori.Length; i++)
                {
                    DropDownList1.Items.Add(anakategori[i]);
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
            
            if (DropDownList1.SelectedValue=="Telefon")
            {
                DropDownList2.Items.Add(marka[1, 0]);
                DropDownList2.Items.Add(marka[1, 1]);
                DropDownList2.Items.Add(marka[1, 2]);
            }
            if (DropDownList1.SelectedValue=="Televizyon")
            {
                DropDownList2.Items.Add(marka[2, 0]);
                DropDownList2.Items.Add(marka[2, 1]);
            }
            if (DropDownList1.SelectedValue=="Laptop")
            {
                DropDownList2.Items.Add(marka[3, 0]);
                DropDownList2.Items.Add(marka[3, 1]);
                DropDownList2.Items.Add(marka[3, 2]);
                DropDownList2.Items.Add(marka[3, 3]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Urun yurun = new Urun();
            UrunCRUD yurunCRUD = new UrunCRUD();

            yurun.Urunkateid = DropDownList1.SelectedValue;
            yurun.Marka = DropDownList2.SelectedItem.Text;
            yurun.Urunadi = TextBox1.Text;
            yurun.Ufiyat = Convert.ToInt32(TextBox2.Text);


            if (RadioButton1.Checked==true)
            {
                yurun.Ukdv = RadioButton1.Text;
            }

            if (RadioButton2.Checked==true)
            {
                yurun.Ukdv = RadioButton2.Text;
            }

            if (RadioButton3.Checked==true)
            {
                yurun.Ukdv = RadioButton3.Text;
            }

            if (RadioButton4.Checked==true)
            {
                yurun.Parabrm = RadioButton4.Text;
            }
            
            if (RadioButton5.Checked==true)
            {
                yurun.Parabrm = RadioButton5.Text;
            }
            
            if (RadioButton6.Checked==true)
            {
                yurun.Parabrm = RadioButton6.Text;
            }

            yurun.Ustokid = TextBox3.Text;
            yurun.Ubarkod = TextBox4.Text;
            yurun.Ustokadet = Convert.ToInt32(TextBox5.Text);

            if (RadioButton7.Checked==true)
            {
                yurun.Ustoktur = RadioButton7.Text;
            }
            if (RadioButton8.Checked==true)
            {
                yurun.Ustoktur = RadioButton8.Text;
            }

            string urunresim = FileUpload1.FileName;
            string urunresimtarih = System.DateTime.Now.ToString("MMddyyyy_HHmmss");
            FileUpload1.SaveAs(Server.MapPath("urunimg/" + urunresimtarih + "_" + urunresim));
            yurun.Uresim = "/admin_panel/urunimg/" + urunresimtarih + "_" + urunresim;
            
            yurun.Kargokg = Convert.ToInt32(TextBox6.Text);

            bool cevap = yurunCRUD.kayit(yurun);

            if (cevap == true)
            {
                Label13.Text = ("Kayıt işlemi başarılı");
            }
            else
            {
                Label13.Text = ("Kayıt işlemi sırasında beklenmeyen bir hata oluştu daha sonra tekrar deneyiniz.");
            }
        }
       
    }
}