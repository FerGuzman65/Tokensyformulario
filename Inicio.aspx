﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="FormularioBD.Inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet" />

    <title>Generar token de acceso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
<style>
    body {
        font-family: 'Barlow', sans-serif;
    }

    .btn, button {
        font-family: 'Barlow', sans-serif !important;
        font-weight: 500;
    }
</style>
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <h2>Acceso al formulario</h2>
        <asp:Button ID="btnGenerar" runat="server" Text="Haz click para generar token" CssClass="btn btn-primary" OnClick="btnGenerar_Click" /><br /><br />
        <asp:Label ID="lblResultado" runat="server" CssClass="form-text"></asp:Label>
    </form>
</body>
</html>
