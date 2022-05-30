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
    public partial class Admin_giris_panel : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Ozak_ErciyasConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Admin_giris_bilgileri where kullanici_mail='" + Txt_Giris_Mail.Text.Trim() + "'AND kullanici_sifre='" + Txt_Giris_Sifre.Text.Trim() + "'", con);



                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        Response.Write("<script>alert('Giriş Başarılı.');</script>");
                        Session["Kullanici_ID"] = dr.GetValue(0).ToString();
                        Session["Kullanici_Mail"] = dr.GetValue(1).ToString();
                        Session["role"] = "Yonetici";
                    }

                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Kayıtlı üye bulunmaktadır.');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}