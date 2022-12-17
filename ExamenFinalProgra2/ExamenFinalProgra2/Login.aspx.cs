using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinalProgra2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.SetUsuario(Tnombre.Text);
            ClsUsuarios.SetClave(Tclave.Text);

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["VehiculoConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select Usuario, Clave from Usuarios where Usuario = '" + ClsUsuarios.GetUsuario() + "' " +
                "and Clave = '" + ClsUsuarios.GetClave() + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("principal.aspx");
            }
            else
            {
                lmensaje.Text = " usuario o contraseña incorrecto";
            }
        }
    }
}