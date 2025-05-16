using System;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace FormularioBD
{
    public partial class FormularioNotaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
        {
       string token = Request.QueryString["token"];

                if (string.IsNullOrEmpty(token) || !IsValidToken(token))
             {
                Response.Write("<h3 style='color:red'>Link inválido o expirado.</h3>");
                Response.End();
            }
           }
        }



        private bool IsValidToken(string token)
        {


            bool isValid = false;
            string connStr = ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString;

            using (var conn = new MySqlConnection(connStr))
            {

                conn.Open();
          string query = "SELECT is_used, expires_at FROM form_tokens WHERE token = @token";
                using (var cmd = new MySqlCommand(query, conn))
                {
               cmd.Parameters.AddWithValue("@token", token);
                using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                   {
                        bool isUsed = reader.GetBoolean("is_used");
                       DateTime expires = reader.GetDateTime("expires_at");
                       isValid = !isUsed && expires > DateTime.UtcNow;
                        }
                }
            }
            }
         return isValid;
        }




        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string conexion = ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString;

            using (MySqlConnection conn = new MySqlConnection(conexion))
            {
                try
                {
                    conn.Open();
                    string query = @"INSERT INTO formulario_notaria (
                        nombre, fecha_nacimiento, lugar_nacimiento, nacionalidad,
                        calle, num_ext, num_int, colonia, ciudad, municipio, estado, cp, pais,
                        telefono_fijo, telefono_celular, correo,
                        curp, rfc, tipo_identificacion, autoridad_identificacion, numero_identificacion,
                        tipo_comprobante, organismo_emite, folio_comprobante,
                        estado_civil, conyuge, regimen_matrimonial
                    ) VALUES (
                        @nombre, @fecha_nacimiento, @lugar_nacimiento, @nacionalidad,
                        @calle, @num_ext, @num_int, @colonia, @ciudad, @municipio, @estado, @cp, @pais,
                        @telefono_fijo, @telefono_celular, @correo,
                        @curp, @rfc, @tipo_identificacion, @autoridad_identificacion, @numero_identificacion,
                        @tipo_comprobante, @organismo_emite, @folio_comprobante,
                        @estado_civil, @conyuge, @regimen_matrimonial
                    )";

                    MySqlCommand cmd = new MySqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@nombre", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@fecha_nacimiento",txtFechaNacimiento.Text);
                    cmd.Parameters.AddWithValue("@lugar_nacimiento",txtLugarNacimiento.Text);
                    cmd.Parameters.AddWithValue("@nacionalidad",txtNacionalidad.Text);
                    cmd.Parameters.AddWithValue("@calle", txtCalle.Text);
                    cmd.Parameters.AddWithValue("@num_ext", txtNumExt.Text);
                    cmd.Parameters.AddWithValue("@num_int", txtNumInt.Text);
                    cmd.Parameters.AddWithValue("@colonia", txtColonia.Text);
                    cmd.Parameters.AddWithValue("@ciudad",txtCiudad.Text);
                    cmd.Parameters.AddWithValue("@municipio",txtMunicipio.Text);
                    cmd.Parameters.AddWithValue("@estado", txtEstado.Text);
                    cmd.Parameters.AddWithValue("@cp", txtCP.Text);
                    cmd.Parameters.AddWithValue("@pais", txtPais.Text);
                    cmd.Parameters.AddWithValue("@telefono_fijo", txtTelefonoFijo.Text);
                    cmd.Parameters.AddWithValue("@telefono_celular", txtCelular.Text);
                    cmd.Parameters.AddWithValue("@correo",txtEmail.Text);
                    cmd.Parameters.AddWithValue("@curp", txtCURP.Text);
                    cmd.Parameters.AddWithValue("@rfc", txtRFC.Text);
                    cmd.Parameters.AddWithValue("@tipo_identificacion", txtTipoID.Text);
                    cmd.Parameters.AddWithValue("@autoridad_identificacion", txtAutoridadID.Text);
                    cmd.Parameters.AddWithValue("@numero_identificacion", txtNumeroID.Text);
                    cmd.Parameters.AddWithValue("@tipo_comprobante", txtTipoComprobante.Text);
                    cmd.Parameters.AddWithValue("@organismo_emite", txtOrganismoEmite.Text);
                    cmd.Parameters.AddWithValue("@folio_comprobante", txtFolioComprobante.Text);
                    cmd.Parameters.AddWithValue("@estado_civil",ddlEstadoCivil.SelectedValue);
                    cmd.Parameters.AddWithValue("@conyuge", txtConyuge.Text);
                    cmd.Parameters.AddWithValue("@regimen_matrimonial", txtRegimen.Text);

                    cmd.ExecuteNonQuery();

                    lblMensaje.Text = "Datos guardados correctamente.";
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = "Error: " + ex.Message;
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
