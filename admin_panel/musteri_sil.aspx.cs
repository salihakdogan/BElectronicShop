using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BElectronicShop.admin_panel
{
    public partial class müsteri_sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string gmail = Request.QueryString["musterisil"];
            if (gmail!=null)
            {
                MusteriCRUD musteri = new MusteriCRUD();
                bool cevap = musteri.musterisil(gmail);

                if (cevap)
                {
                    Response.Redirect("musteri_sil.aspx");
                }
                else
                {

                }
            }
        }
    }
}