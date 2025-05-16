using System;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace FormularioBD
{   public partial class Inicio :System.Web.UI.Page
    { 
        protected void btnGenerar_Click(object sender, EventArgs e)
     {
            string token= Guid.NewGuid().ToString("N").Substring(0, 8).ToUpper();
            string guidLink=Guid.NewGuid().ToString();
            DateTime expires= DateTime.Now.AddDays(1);
            string conexion= ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString;

            using (MySqlConnection conn = new MySqlConnection(conexion))
      {
             conn.Open();
            string query = @"INSERT INTO form_tokens (token, guid_link, expires_at) 
                     VALUES (@token, @guid, @expires)";
             MySqlCommand cmd = new MySqlCommand(query, conn);
             cmd.Parameters.AddWithValue("@token", token);
            cmd.Parameters.AddWithValue("@guid", guidLink);
            cmd.Parameters.AddWithValue("@expires", expires);
            cmd.ExecuteNonQuery();
       }

            // Mostrar solo el GUID (no token ni link)
            lblResultado.Text = $"Se generó el acceso correctamente.<br /><b>GUID generado:</b> {token}";
      }

    }



}

