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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Ozak_ErciyasConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;
                Button12.Visible = false;
                Button13.Visible = false;
                Button14.Visible = false;
                Button15.Visible = false;
                Button16.Visible = false;
                Button17.Visible = false;
                Button18.Visible = false;
                Button19.Visible = false;
                Button20.Visible = false;
                Button21.Visible = false;
                Button22.Visible = false;
                Button23.Visible = false;
                Button24.Visible = false;
                Button25.Visible = false;
                Button26.Visible = false;
                Button27.Visible = false;
                Button28.Visible = false;
                Button29.Visible = false;
                Button30.Visible = false;
                Button31.Visible = false;
                Button32.Visible = false;
            }
            else if (Session["role"].Equals("Kullanici"))
            {

                Button1.Visible = true;
                Button2.Visible = true;
                Button3.Visible = true;
                Button4.Visible = true;
                Button5.Visible = true;
                Button6.Visible = true;
                Button7.Visible = true;
                Button8.Visible = true;
                Button9.Visible = true;
                Button10.Visible = true;
                Button11.Visible = true;
                Button12.Visible = true;
                Button13.Visible = true;
                Button14.Visible = true;
                Button15.Visible = true;
                Button16.Visible = true;
                Button17.Visible = true;
                Button18.Visible = true;
                Button19.Visible = true;
                Button20.Visible = true;
                Button21.Visible = true;
                Button22.Visible = true;
                Button23.Visible = true;
                Button24.Visible = true;
                Button25.Visible = true;
                Button26.Visible = true;
                Button27.Visible = true;
                Button28.Visible = true;
                Button29.Visible = true;
                Button30.Visible = true;
                Button31.Visible = true;
                Button32.Visible = true;
            }
            else if (Session["role"].Equals("Yonetici"))
            {

                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;
                Button12.Visible = false;
                Button13.Visible = false;
                Button14.Visible = false;
                Button15.Visible = false;
                Button16.Visible = false;
                Button17.Visible = false;
                Button18.Visible = false;
                Button19.Visible = false;
                Button20.Visible = false;
                Button21.Visible = false;
                Button22.Visible = false;
                Button23.Visible = false;
                Button24.Visible = false;
                Button25.Visible = false;
                Button26.Visible = false;
                Button27.Visible = false;
                Button28.Visible = false;
                Button29.Visible = false;
                Button30.Visible = false;
                Button31.Visible = false;
                Button32.Visible = false;
            }
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
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", tarhana_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", Ezo_ID.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", Mercimek_ID.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", TasKebab.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", izmir_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", tavuk_sote_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", ispanak_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", musakka_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", adana_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
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
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", tavuksis_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", beyti_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", bulgur_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", pirinc_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", coban_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", mevsim_id .Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", akdeniz_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", sogukbaklava_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", fistiklibaklava_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", sutlac_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", trilece_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", kunefe_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", profiterol_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", havuc_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id",kola_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", fanta_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", sprite_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button27_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", icetea_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", soda_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", su_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", ayran_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", turkkahvesi_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

               Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Sepet_tablosu(yemek_id,kullanıcı_id) values  (@yemek_id,@kullanici_id) ", con);
                cmd.Parameters.AddWithValue("@yemek_id", kahve_id.Text.Trim());
                cmd.Parameters.AddWithValue("@kullanici_id", Session["Kullanici_ID"].ToString().Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Ürününüz sepete eklendi');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}