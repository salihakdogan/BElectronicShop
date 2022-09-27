using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BElectronicShop
{
    public class UrunCRUD
    {
        Db db = new Db();

        public bool kayit(Urun urun)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into urunler" + "(UrunKateID, UMarka, UrunAdi, UFiyat, UKdv, ParaBrm, UStokID, UBarkod, UStokAdet, UStokTur, UResim, KargoKg)" +
            "values(@a, @b, @c, @d , @e, @f, @g, @h, @i ,@j, @k, @l)", db.baglanti);

            komut.Parameters.AddWithValue("@a", urun.Urunkateid);
            komut.Parameters.AddWithValue("@b", urun.Marka);
            komut.Parameters.AddWithValue("@c", urun.Urunadi);
            komut.Parameters.AddWithValue("@d", urun.Ufiyat);
            komut.Parameters.AddWithValue("@e", urun.Ukdv);
            komut.Parameters.AddWithValue("@f", urun.Parabrm);
            komut.Parameters.AddWithValue("@g", urun.Ustokid);
            komut.Parameters.AddWithValue("@h", urun.Ubarkod);
            komut.Parameters.AddWithValue("@i", urun.Ustokadet);
            komut.Parameters.AddWithValue("@j", urun.Ustoktur);
            komut.Parameters.AddWithValue("@k", urun.Uresim);
            komut.Parameters.AddWithValue("@l", urun.Kargokg);

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
            SqlCommand komut = new SqlCommand("select * from urunler", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public bool urunsil(string urunbarkod)
        {
            bool cevap;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from urunler where UBarkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", urunbarkod);
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

        public Urun urungoster(string gbarkod)
        {
            Urun urun = new Urun();
            db.ac();
            
            SqlCommand komut = new SqlCommand("select * from urunler where UBarkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gbarkod);

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            urun.Urunkateid = dt.Rows[0][0].ToString();
            urun.Marka = dt.Rows[0][1].ToString();
            urun.Urunadi = dt.Rows[0][2].ToString();
            urun.Ufiyat = Convert.ToInt32(dt.Rows[0][3]);
            urun.Ukdv = dt.Rows[0][4].ToString();
            urun.Parabrm = dt.Rows[0][5].ToString();
            urun.Ustokid = dt.Rows[0][6].ToString();
            urun.Ubarkod = dt.Rows[0][7].ToString();
            urun.Ustokadet = Convert.ToInt32(dt.Rows[0][8]);
            urun.Ustoktur = dt.Rows[0][9].ToString();
            urun.Uresim = dt.Rows[0][10].ToString();
            urun.Kargokg = Convert.ToInt32(dt.Rows[0][11]);

            db.kapat();
            return urun;
        }

        public bool urunguncelle(Urun urun)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update urunler set UrunKateID=@a, UMarka=@b, UrunAdi=@c,	UFiyat=@d, UKdv=@e,	ParaBrm=@f,	UStokID=@g,	UStokAdet=@h, UStokTur=@i, UResim=@j, KargoKg=@k where  UBarkod=@l", db.baglanti);

            komut.Parameters.AddWithValue("@a", urun.Urunkateid);
            komut.Parameters.AddWithValue("@b", urun.Marka);
            komut.Parameters.AddWithValue("@c", urun.Urunadi);
            komut.Parameters.AddWithValue("@d", urun.Ufiyat);
            komut.Parameters.AddWithValue("@e", urun.Ukdv);
            komut.Parameters.AddWithValue("@f", urun.Parabrm);
            komut.Parameters.AddWithValue("@g", urun.Ustokid);
            komut.Parameters.AddWithValue("@h", urun.Ustokadet);
            komut.Parameters.AddWithValue("@i", urun.Ustoktur);
            komut.Parameters.AddWithValue("@j", urun.Uresim);
            komut.Parameters.AddWithValue("@k", urun.Urunkateid);
            komut.Parameters.AddWithValue("@l", urun.Urunkateid);

            db.kapat();
            return cevap;
        }

        public DataTable etiketegoreliste(string gelenkategori)
        {
            DataTable dt = new DataTable();
            
            db.ac();
            SqlCommand komut = new SqlCommand("select * from urunler where Etiket=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gelenkategori);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable tumurunlerilistele()
        {
            DataTable dt = new DataTable();
            
            db.ac();
            SqlCommand komut = new SqlCommand("select * from urunler", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
        public DataTable onecikansayi() /*one cikan urunlerin sayisi*/
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select count(Etiket) from urunler where Etiket ='onecikan'", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable kategoriyegoreliste(string gkategori)
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select count(*) from urunler where UrunKateID=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gkategori);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable markayagoreliste(string gkategori, string gmarka)
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select count(*) from urunler where UrunKateID=@a and UMarka=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", gkategori);
            komut.Parameters.AddWithValue("@b", gmarka);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public Urun urundetaygoster(string gbarkod)
        {
            Urun urun = new Urun();
            db.ac();

            SqlCommand komut = new SqlCommand("select * from urunler where UBarkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gbarkod);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                urun.Urunkateid = dr[0].ToString();
                urun.Marka = dr[1].ToString();
                urun.Urunadi = dr[2].ToString();
                urun.Ufiyat = Convert.ToInt32(dr[3]);
                urun.Ukdv = dr[4].ToString();
                urun.Parabrm = dr[5].ToString();
                urun.Ustokid = dr[6].ToString();
                urun.Ubarkod = dr[7].ToString();
                urun.Ustokadet = Convert.ToInt32(dr[8]);
                urun.Ustoktur = dr[9].ToString();
                urun.Uresim = dr[10].ToString();
                urun.Kargokg = Convert.ToInt32(dr[11]);
            }
            
            db.kapat();
            return urun;
        }
    }
}