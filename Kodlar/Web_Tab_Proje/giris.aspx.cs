﻿using System;
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
    public partial class WebForm5 : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("SELECT * from Kullanici_bilgi_tablosu where kullanici_mail='" + Txt_Giris_Mail.Text.Trim() + "'AND kullanici_sifre='" + Txt_Giris_Sifre.Text.Trim() + "'", con);

                

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Giriş Başarılı.');</script>");
                        Session["Kullanici_ID"] = dr.GetValue(0).ToString();
                        Session["Kullanici_Mail"] =dr.GetValue(5).ToString();
                        Session["role"] = "Kullanici";

                    }
                    Response.Redirect("index.aspx");
                    
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

       

        protected void Button_Yonetici_giris_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_giris_panel.aspx");
        }
    }
}