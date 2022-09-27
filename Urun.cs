using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BElectronicShop
{
    public class Urun
    {
        string urunkateid, marka, urunadi, ukdv, parabrm, ustokid, ubarkod, ustoktur, uresim;
        int ufiyat, ustokadet, kargokg;

        public string Urunkateid { get => urunkateid; set => urunkateid = value; }
        public string Marka { get => marka; set => marka = value; }
        public string Urunadi { get => urunadi; set => urunadi = value; }
        public string Ukdv { get => ukdv; set => ukdv = value; }
        public string Parabrm { get => parabrm; set => parabrm = value; }
        public string Ustokid { get => ustokid; set => ustokid = value; }
        public string Ubarkod { get => ubarkod; set => ubarkod = value; }
        public string Ustoktur { get => ustoktur; set => ustoktur = value; }
        public string Uresim { get => uresim; set => uresim = value; }
        public int Ufiyat { get => ufiyat; set => ufiyat = value; }
        public int Ustokadet { get => ustokadet; set => ustokadet = value; }
        public int Kargokg { get => kargokg; set => kargokg = value; }
    }
}