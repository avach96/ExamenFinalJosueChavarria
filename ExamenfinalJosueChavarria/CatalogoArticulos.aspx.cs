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
    public partial class CatalogoArticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            SqlCommand command = new SqlCommand("ConsultarArticulo", con);
            command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand cmd = new SqlCommand("AddArticulos", conexion);
            cmd.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = tdescripcion.Text;
            cmd.Parameters.Add("@TipoArti", SqlDbType.VarChar).Value = ttiparticulo.Text;
            cmd.Parameters.Add("@PRECIO", SqlDbType.Money).Value = tprecio.Text;
            cmd.Parameters.Add("@Costo", SqlDbType.Money).Value = tcosto.Text; 
            cmd.Parameters.Add("@Cantidad", SqlDbType.Int).Value = tcantidad.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conexion.Close();
            Response.Redirect("CatalogoArticulos.aspx");
        }

        protected void bborrar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand cmd = new SqlCommand("DelArticulos", conexion);
            cmd.Parameters.Add("@Codigo", SqlDbType.VarChar).Value = tcodigo.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conexion.Close();
            Response.Redirect("CatalogoArticulos.aspx");
        }

        protected void bactualizar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand cmd = new SqlCommand("UpdArticulos", conexion);
            cmd.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = tdescripcion.Text;
            cmd.Parameters.Add("@TipArti", SqlDbType.VarChar).Value = ttiparticulo.Text;
            cmd.Parameters.Add("@PRECIO", SqlDbType.Money).Value = tprecio.Text;
            cmd.Parameters.Add("@Costo", SqlDbType.Money).Value = tcosto.Text;
            cmd.Parameters.Add("@Cantidad", SqlDbType.Int).Value = tcantidad.Text;
            cmd.Parameters.Add("@Codigo", SqlDbType.Int).Value = tcodigo.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conexion.Close();
            Response.Redirect("CatalogoArticulos.aspx");
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