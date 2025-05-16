using System;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

namespace FormularioBD
{  public partial class TokensGuardados : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTokens();
            } }

        private void CargarTokens()
        {
            string conexion = ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString;

            using (MySqlConnection conn = new MySqlConnection(conexion))
            {
                conn.Open();
                string query = "SELECT token, guid_link, is_used, expires_at FROM form_tokens ORDER BY created_at DESC";



           MySqlCommand cmd = new MySqlCommand(query, conn);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

                gvTokens.DataSource = dt;
                gvTokens.DataBind();
        }      }
    }
}
