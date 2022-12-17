<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamenFinalProgra2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 397px">
    <form id="form1" runat="server">
        <div>
            Ingrese sus datos

            <br />
            <br />
            Usuario:<asp:TextBox ID="Tusuario" runat="server"></asp:TextBox>
            <br />
            <br />
            Clave:<asp:TextBox ID="Tclave" runat="server"></asp:TextBox>
            <br />
            <br />
            Nombre:<asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
            <br />
            <br />
            Apellido:<asp:TextBox ID="Tapellido" runat="server"></asp:TextBox>

            <br />
            <br />
            <asp:Label ID="lmensaje" runat="server" Text=""></asp:Label>
            <br />

            <div>
                <asp:Button ID="bingresar" runat="server" Text="Ingresar" OnClick="bingresar_Click" />
            </div>
        </div>
    </form>
</body>
</html>
