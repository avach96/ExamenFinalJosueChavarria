using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenfinalJosueChavarria
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void barticulos_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatalogoArticulos.aspx");
        }

        protected void btarticulos_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatalogoTipoArticulos.aspx");
        }

        protected void btusuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatalogoTipoUsuarios.aspx");
        }

        protected void busuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("CatalogoUsuarios.aspx");
        }

        protected void breportes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }
    }
}