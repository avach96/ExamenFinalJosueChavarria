using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenfinalJosueChavarria
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("RepoCostoInv", con);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

            String strConnString1 = ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection con1 = new SqlConnection(strConnString1);
            SqlCommand command1 = new SqlCommand("RepoProyGanan", con1);
            command1.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da1 = new SqlDataAdapter(command1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            GridView2.DataSource = dt1;
            GridView2.DataBind();
            con1.Close();

            String strConnString2 = ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection con2 = new SqlConnection(strConnString2);
            SqlCommand command2 = new SqlCommand("RepoArticulos", con2);
            command2.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da2 = new SqlDataAdapter(command2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            GridView3.DataSource = dt2;
            GridView3.DataBind();
            con2.Close();

        }

        protected void bvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(Object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Display the Product Description in italics.
                //e.Row.Cells[2].Text = "<i>" + e.Row.Cells[2].Text + "</i>";

            }

        }



    }
}