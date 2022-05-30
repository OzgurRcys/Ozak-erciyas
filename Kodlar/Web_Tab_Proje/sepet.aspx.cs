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

        string strcon = ConfigurationManager.ConnectionStrings["Ozak_ErciyasConnectionString2"].ConnectionString;

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
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Gecmis_siparisler(kullanici_id,yemek_id)SELECT kullanıcı_id,yemek_id FROM Sepet_tablosu; DELETE FROM Sepet_tablosu;", con);
                
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Siparişiniz alınmıştır');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}