<%@ Page 
      
    Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_04Modul_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter Your email<br />
        <br />
    
        <asp:TextBox ID="TextBox1" AutoPostBack="true"  OnTextChanged="TextBox1_TextChanged"
            runat="server"
            TextMode="Email">

        </asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
