using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BElectronicShop.admin_panel
{
    public partial class urun_sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string urunadi = Request.QueryString["urunsil"];
            if (urunadi != null)
            {
                UrunCRUD urun = new UrunCRUD();
                bool cevap = urun.urunsil(urunadi);

                if (cevap)
                {
                    Response.Redirect("urun_sil.aspx");
                }
                else
                {
                    
                }
            }
        }
    }
}