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
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click1(object sender, EventArgs e)
        {

            if (IsValid)
            {

                String s = System.Configuration.ConfigurationManager.ConnectionStrings["ExamenFinalConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand cmd = new SqlCommand("Login", conexion);
                cmd.Parameters.AddWithValue("@USUARIO", tusuario.Text);
                cmd.Parameters.AddWithValue("@CLAVE", tclave.Text);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader registro = cmd.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {

                    mensaje.Text = "usuario o contraseña incorrecto";
                }

                conexion.Close();
            }


        }

        public void butregistrarse_Click(object sender, EventArgs e)
        {

        }

        protected void bregistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}