using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BElectronicShop
{
    public class MusteriCRUD
    {
        Db db = new Db();

        public bool kayit(Musteri musteri)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into musteriler" + "(MTc, MKadi, MAdi, MSoyadi, MSfr, MMail, DKod, Onay)" +
            "values(@a, @b, @c, @d , @e, @f, @g, @h)", db.baglanti);

            komut.Parameters.AddWithValue("@a", musteri.Tc);
            komut.Parameters.AddWithValue("@b", musteri.Kadi);
            komut.Parameters.AddWithValue("@c", musteri.Ad);
            komut.Parameters.AddWithValue("@d", musteri.Soyad);
            komut.Parameters.AddWithValue("@e", musteri.Sifre);
            komut.Parameters.AddWithValue("@f", musteri.Mail);
            komut.Parameters.AddWithValue("@g", musteri.Dkod);
            komut.Parameters.AddWithValue("@h", musteri.Durum);

            int sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                bilgi = false;
            }
            db.kapat();
            return bilgi;
        }
        public DataTable liste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public bool adminonay(string gkadi, string gsfr)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from admin where AKadi=@a and ASfr=@b" , db.baglanti);
            komut.Parameters.AddWithValue("@a", gkadi);
            komut.Parameters.AddWithValue("@b", gsfr);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count==0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }

        public bool musterisil(string gmail)
        {
            bool cevap;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from musteriler where MMail=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gmail);
            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay==0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;
        }

        public Musteri musterigoster(string gmail)
        {
            Musteri musteri = new Musteri();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where MMail=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gmail);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            
            musteri.Tc = dt.Rows[0][0].ToString();
            musteri.Kadi = dt.Rows[0][1].ToString();
            musteri.Ad = dt.Rows[0][2].ToString();
            musteri.Soyad = dt.Rows[0][3].ToString();
            musteri.Mail = dt.Rows[0][5].ToString();

            db.kapat();
            return musteri;
        }

        public bool musteriguncelle(Musteri musteri)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update musteriler set MTc=@a, MKadi=@b, MAdi=@c, MSoyadi=@d where MMail=@e", db.baglanti);
            komut.Parameters.AddWithValue("@a", musteri.Tc);
            komut.Parameters.AddWithValue("@b", musteri.Kadi);
            komut.Parameters.AddWithValue("@c", musteri.Ad);
            komut.Parameters.AddWithValue("@d", musteri.Soyad);
            komut.Parameters.AddWithValue("@e", musteri.Mail);

            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;
        }

        public bool musteriguncellemekadi(string mkadi)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where MKadi=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mkadi);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }

        public bool musterimi(string mmail, string msfr, string onay)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where MMail=@a and MSfr=@b and Onay=1", db.baglanti);
            komut.Parameters.AddWithValue("@a", mmail);
            komut.Parameters.AddWithValue("@b", msfr);
            
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }

        public DataTable müsteeridkodliste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public bool dogrulandi(string mail, string kod)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update musteriler set Onay=1 where MMail=@a and DKod=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            komut.Parameters.AddWithValue("@b", kod);
         
            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;

        }

        //public bool dogrulanmamis(string mmail, string kod)
        //{
        //    bool sonuc;
        //    DataTable dt = new DataTable();
        //    db.ac();
        //    SqlCommand komut = new SqlCommand("select * from musteriler where MMail=@a and DKod=@b", db.baglanti);
        //    komut.Parameters.AddWithValue("@a", mmail);
        //    komut.Parameters.AddWithValue("@b", kod);

        //    SqlDataAdapter adp = new SqlDataAdapter(komut);
        //    adp.Fill(dt);
        //    if (dt.Rows.Count == 0)
        //    {
        //        sonuc = false;
        //    }
        //    else
        //    {
        //        sonuc = true;
        //    }
        //    db.kapat();
        //    return sonuc;
        //}

        public DataTable dogrulanmamis(string mmail)
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where MMail=@a and Onay=0", db.baglanti);
            komut.Parameters.AddWithValue("@a", mmail);
            

            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
    }
}