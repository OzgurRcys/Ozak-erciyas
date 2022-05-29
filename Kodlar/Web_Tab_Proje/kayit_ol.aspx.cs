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
    public partial class WebForm6 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["Ozak_ErciyasConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (kayitliUyeKontrol())
            {
                Response.Write("<script>alert('Kayıtlı üye bulunmaktadır.');</script>");
            }
            else    {
                yeniKullanici();
            }
            
        }


        bool kayitliUyeKontrol()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Kullanici_bilgi_tablosu where kullanici_mail='"+Txt_Mail.Text.Trim()+"';", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable DT = new DataTable();
                adapter.Fill(DT);

                con.Close();
                if (DT.Rows.Count >= 1)
                {
                    return true;

                }
                else
                {
                    return false;
                }
                

              
                

                

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }

           return false;
        }
        void yeniKullanici()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Kullanici_bilgi_tablosu(kullanici_adi,kullanici_soyadi,kullanici_telefon,kullanici_mail,kullanici_sifre) values  (@kullanici_adi,@kullanici_soyadi,@kullanici_telefon,@kullanici_mail,@kullanici_sifre) ", con);
                cmd.Parameters.AddWithValue("@kullanici_adi", Txt_Ad.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_soyadi", Txt_Soyad.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_telefon", Txt_TelNo.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_mail", Txt_Mail.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_sifre", Txt_Sifre.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Kayıt Başarılı');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

      
    }
        }
   