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
	public partial class rapor : System.Web.UI.Page
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
                string sql_string = "SELECT kullanici_id, kullanici_adi, kullanici_soyadi, kullanici_telefon, kullanici_mail, kullanici_sifre FROM Kullanici_bilgi_tablosu";

                SqlConnection sqlConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Ozak_ErciyasConnectionString2"].ToString());

                SqlCommand sqlCommand = new SqlCommand(sql_string, sqlConnection);
                SqlDataAdapter my_sql_adapter = new SqlDataAdapter(sqlCommand);

                DataSet ds = new DataSet();
                my_sql_adapter.Fill(ds, "DataSet1");

                ReportViewer1.Reset();
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("Raporlar/Report1.rdlc");
                ReportDataSource rds = new ReportDataSource("DataSet_name", ds.Tables[0]);
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(rds);
                ReportViewer1.LocalReport.Refresh();


            }
        }
	}
}