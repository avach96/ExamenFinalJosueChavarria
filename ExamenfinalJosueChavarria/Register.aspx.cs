using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenfinalJosueChavarria
{
    public partial class Register : System.Web.UI.Page
    {
        private int tipousuario = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bregistrarse_Click(object sender, EventArgs e)
        {
            if (int.Parse(ttipousuario.Text) == 1)
                tipousuario = 3;
            else if (int.Parse(ttipousuario.Text) == 2)
                tipousuario = 4;
            else
                tipousuario = 3;

            if (IsValid)
            {

                String s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand cmd = new SqlCommand("ADDUSERS", conexion);
                cmd.Parameters.AddWithValue("@USUARIO", tusuario.Text);
                cmd.Parameters.AddWithValue("@CLAVE", tclave.Text);
                cmd.Parameters.AddWithValue("@TUSUARIO", tipousuario);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader registro = cmd.ExecuteReader();
                Response.Redirect("Login.aspx");
                conexion.Close();
            }

        }

    }
}