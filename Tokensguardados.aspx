<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TokensGuardados.aspx.cs" Inherits="FormularioBD.TokensGuardados" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet" />
    <style>
    body {
        font-family: 'Barlow', sans-serif;
    }

    .btn, button {
        font-family: 'Barlow', sans-serif !important;
        font-weight: 500;
    }
</style>

    <title>Tokens guardados</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <h2 class="mb-4">Tokens generados</h2>
        <asp:GridView ID="gvTokens" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="token" HeaderText="Token" />
                <asp:BoundField DataField="guid_link" HeaderText="GUID" />
                <asp:BoundField DataField="is_used" HeaderText="Usado" />
                <asp:BoundField DataField="expires_at" HeaderText="Expira" />
                <asp:TemplateField HeaderText="Acceso directo">
                    <ItemTemplate>
                        <a href='<%# "formulario.aspx?token=" + Eval("token") %>' target="_blank">Abrir formulario</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
