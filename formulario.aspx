<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulario.aspx.cs" Inherits="FormularioBD.FormularioNotaria" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulario de Seguridad Notarial</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="container mt-4">
        <h2 class="mb-4">Formulario de Seguridad Notarial</h2>

        <!-- Datos -->
        <div class="mb-3">

            <label class="form-label">Nombre completo</label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
        </div>


        <div class="mb-3">
            <label class="form-label">Fecha de nacimiento</label>
            <asp:TextBox ID="txtFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date" />
        </div>
        <div class="mb-3">
            <label class="form-label">Lugar de nacimiento</label>
            <asp:TextBox ID="txtLugarNacimiento" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Nacionalidad</label>
            <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control" />
        </div>

        <h4 class="mt-4">Domicilio Particular</h4>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label class="form-label">Calle</label>
                <asp:TextBox ID="txtCalle" runat="server" CssClass="form-control" />
            </div>



            <div class="col-md-3 mb-3">
                <label class="form-label">Número Exterior</label>
                <asp:TextBox ID="txtNumExt" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-3 mb-3">
                <label class="form-label">Número Interior</label>
                <asp:TextBox ID="txtNumInt" runat="server" CssClass="form-control" />
            </div>
        </div>



        <div class="row">
            <div class="col-md-6 mb-3">
                <label class="form-label">Colonia</label>
                <asp:TextBox ID="txtColonia" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-6 mb-3">
                <label class="form-label">Ciudad</label>
                <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
            
                
                <label class="form-label">Municipio</label>
                <asp:TextBox ID="txtMunicipio" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-6 mb-3">
                <label class="form-label">Estado</label>
                <asp:TextBox ID="txtEstado" runat="server" CssClass="form-control" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
           
                <label class="form-label">Código Postal</label>
                <asp:TextBox ID="txtCP" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-6 mb-3">
                <label class="form-label">País</label>
                <asp:TextBox ID="txtPais" runat="server" CssClass="form-control" Text="México" />
            </div>
        </div>
        <div class="mb-3">
            <label class="form-label">Teléfono fijo</label>
            <asp:TextBox ID="txtTelefonoFijo" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">Teléfono celular</label>
            <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">Correo electrónico</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
        </div>

        <div class="mb-3">
            <label class="form-label">CURP</label>
            <asp:TextBox ID="txtCURP" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">RFC</label>
            <asp:TextBox ID="txtRFC" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">Tipo de Identificación</label>
            <asp:TextBox ID="txtTipoID" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">Autoridad que la emite</label>
            <asp:TextBox ID="txtAutoridadID" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">Número de Identificación</label>
            <asp:TextBox ID="txtNumeroID" runat="server" CssClass="form-control" />
        </div>

        <h4 class="mt-4">Comprobante de Domicilio</h4>
        <div class="mb-3">
            <label class="form-label">Tipo de Comprobante</label>
            <asp:TextBox ID="txtTipoComprobante" runat="server" CssClass="form-control" />
        </div>



        <div class="mb-3">
            <label class="form-label">Organismo que lo emite</label>
            <asp:TextBox ID="txtOrganismoEmite" runat="server" CssClass="form-control" />
        </div>



        <div class="mb-3">
            <label class="form-label">Número de folio</label>
            <asp:TextBox ID="txtFolioComprobante" runat="server" CssClass="form-control" />
        </div>



        <div class="mb-3">
            <label class="form-label">Estado civil</label>
            <asp:DropDownList ID="ddlEstadoCivil" runat="server" CssClass="form-select">
             <asp:ListItem Text="Soltero(a)" />
             <asp:ListItem Text="Casado(a)" />
             <asp:ListItem Text="Divorciado(a)" />
             <asp:ListItem Text="Viudo(a)" />
            </asp:DropDownList>
        </div>



        <div class="mb-3">
            <label class="form-label">Nombre del cónyuge</label>
            <asp:TextBox ID="txtConyuge" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
           <label class="form-label">Régimen económico matrimonial</label>
         <asp:TextBox ID="txtRegimen" runat="server" CssClass="form-control" />
        </div>




<!-- boton y msj -->
<asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
<br /><br />
<asp:Label ID="Label1" runat="server" CssClass="form-text text-success" />

       <asp:Label ID="lblMensaje" runat="server" CssClass="form-text text-success" />
    </form>
    <script>
    window.history.replaceState({}, document.title, window.location.pathname);
    </script>

</body>
</html>
