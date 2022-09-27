using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BElectronicShop.admin_panel
{
    public partial class admin_panel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != "ok")
            {
                Response.Redirect("../admin_giris.aspx");
            }
        } 
    }
}