using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Tab_Proje
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Response.Redirect("index.aspx"); 
            }
            else if (Session["role"].Equals("Kullanici"))
            {
                Response.Redirect("index.aspx");
            }
            else if (Session["role"].Equals("Yonetici"))
            {

               
            }
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Kul_bilgileri_form_DataBound(object sender, EventArgs e)
        {
            Kul_Bilgileri.DataBind();
        }
    }
}