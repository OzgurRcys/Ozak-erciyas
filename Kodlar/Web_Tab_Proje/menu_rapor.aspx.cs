using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using Microsoft.Reporting.WebForms;
using System.Data;

namespace Web_Tab_Proje
{
    public partial class menu_rapor : System.Web.UI.Page
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


            if (!this.IsPostBack)
            {
                string sql_string = "SELECT Yemek_menü.*, Yemek_turleri.*FROM Yemek_menü INNER JOIN Yemek_kategori ON Yemek_menü.yemek_id = Yemek_kategori.yemek_id INNER JOIN Yemek_turleri ON Yemek_kategori.yemek_turu_id = Yemek_turleri.yemek_turu_id";

                SqlConnection sqlConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Ozak_ErciyasConnectionString2"].ToString());

                SqlCommand sqlCommand = new SqlCommand(sql_string, sqlConnection);
                SqlDataAdapter my_sql_adapter = new SqlDataAdapter(sqlCommand);

                DataSet ds = new DataSet();
                my_sql_adapter.Fill(ds, "DataSet2");

                ReportViewer1.Reset();
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("Raporlar/Report2.rdlc");
                ReportDataSource rds = new ReportDataSource("DataSet_menu", ds.Tables[0]);
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(rds);
                ReportViewer1.LocalReport.Refresh();


            }
        }
    }
}