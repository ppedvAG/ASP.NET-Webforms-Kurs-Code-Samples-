<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="_04Modul_Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Textdatei Mails eintragen</h1>
        <div>
           
            <asp:TextBox runat="server" ID="email"></asp:TextBox>
            <asp:Button runat="server" Text="Button"
                Height="26px" OnClick="Unnamed2_Click" />

        </div>
    </form>
</body>
</html>
