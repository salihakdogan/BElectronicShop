using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BElectronicShop
{
    public class SepetCRUD
    {
        Db db = new Db();

        public bool sepeteekle(string barkodprm, string mailprm)
        {
            bool sonuc = false;
            int cevap;

            db.ac();
            //ürün daha önceden eklenmiş mi
            SqlCommand komutara = new SqlCommand("select count(*) from sepet where UBarkod=@bk and MMail=@ml", db.baglanti);
            komutara.Parameters.AddWithValue("@ml", mailprm);
            komutara.Parameters.AddWithValue("@bk", barkodprm);

            int kaysay = Convert.ToInt16(komutara.ExecuteScalar());

            if (kaysay==0)//hayır ise
            {
                SqlCommand komut = new SqlCommand("insert into sepet values(@a, @b, @c, @d, @e)", db.baglanti);

                komut.Parameters.AddWithValue("@a", barkodprm);
                komut.Parameters.AddWithValue("@b", 1);
                komut.Parameters.AddWithValue("@c", mailprm);
                komut.Parameters.AddWithValue("@d", 0);
                komut.Parameters.AddWithValue("@e", System.DateTime.Now);


                cevap = komut.ExecuteNonQuery();
                if (cevap == 1)
                {
                    sonuc = true;
                }             
            }
            else
            {
                SqlCommand adetarttir = new SqlCommand("update sepet set UAdet=UAdet+1 where MMail=@a and UBarkod=@b", db.baglanti);

                adetarttir.Parameters.AddWithValue("@a", mailprm);
                adetarttir.Parameters.AddWithValue("@b", barkodprm);

                cevap = adetarttir.ExecuteNonQuery();

                if (cevap==1)
                {
                    sonuc = true;
                }
            }
            db.kapat();
            return sonuc;
        }

        public DataTable sepetgoster(string mailprm)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from sepet where Durum=0 and MMail=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mailprm);

            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }

        public int sepetadet(string mailprm)
        {
            int cesitadet;

            db.ac();
            SqlCommand komut = new SqlCommand("select count(*) from sepet where Durum=0 and MMail=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mailprm);
            cesitadet = Convert.ToInt16(komut.ExecuteScalar());

            db.kapat();
            return cesitadet;
        }

        public DataTable sepettoplami(string mailprm)
        {
            DataTable dt = new DataTable();

            db.ac();

            SqlCommand komut = new SqlCommand("select sum(UFiyat*UAdet) from sepet,urunler  where sepet.UBarkod = urunler.UBarkod and MMail = @a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mailprm);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            return dt;
        }
    }
}