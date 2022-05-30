using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Tab_Proje
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            try
            {
                if (Session["role"] ==null)
                {
                    Button1.Visible = true; //hakkımızda
                    Button2.Visible = true;//iletisim
                    Button3.Visible = true;//admin girisi
                    Button4.Visible = true; //menü
                    Button5.Visible = true;//giris
                    Button6.Visible = true; //kayit ol
                    Button7.Visible = false;//sepet
                    Button8.Visible = false;//admin paneli
                    Button9.Visible = false;//çıkış yap
                }
                 else if (Session["role"].Equals("Kullanici")) {

                    Button1.Visible = true; //hakkımızda
                    Button2.Visible = true;//iletisim
                    Button3.Visible = false;//admin girisi
                    Button4.Visible = true; //menü
                    Button5.Visible = false;//giris
                    Button6.Visible = false; //kayit ol
                    Button7.Visible = true;//sepet
                    Button8.Visible = false;//admin paneli
                    Button9.Visible = true;//çıkış yap
                }
                else if (Session["role"].Equals("Yonetici"))
                {

                    Button1.Visible = false; //hakkımızda
                    Button2.Visible = false;//iletisim
                    Button3.Visible = false;//admin girisi
                    Button4.Visible = false; //menü
                    Button5.Visible = false;//giris
                    Button6.Visible = false; //kayit ol
                    Button7.Visible = false;//sepet
                    Button8.Visible = true;//admin paneli
                    Button9.Visible = true;//çıkış yap
                }

            }
            catch (Exception ex)
            {

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("iletisim.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit_ol.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("sepet.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_giris_panel.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

            
            Session["Kullanici_ID"] = null;
            Session["Kullanici_Mail"] = null;
            Session["role"] = null;
            
            Button1.Visible = true; //hakkımızda
            Button2.Visible = true;//iletisim
            Button3.Visible = true;//admin girisi
            Button4.Visible = true; //menü
            Button5.Visible = true;//giris
            Button6.Visible = true; //kayit ol
            Button7.Visible = false;//sepet
            Button8.Visible = false;//admin paneli
            Button9.Visible = false;//çıkış yap
            Response.Redirect("giris.aspx");

        }
    }
}