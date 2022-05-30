using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace Web_Tab_Proje
{
   

    public partial class WebForm4 : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici_ID"] == null)
            {
                Label1.Text = null;
            }
            else
            {
                Label1.Text = Session["Kullanici_ID"].ToString().Trim();

            }

        }
       
        protected void Button10_Click(object sender, EventArgs e)
        {

        }
    }
}