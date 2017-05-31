<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="_04Modul_Default6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Server Encode</h1>
    <form id="form1" runat="server">
    <div>
    <%=Server.HtmlEncode("Hannes&Preishuber-Pfügl") %>
        <%=Server.UrlEncode("http://www.ppedv.de?id=Hannes Preishuber-Pflügl") %>
    </div>

        <a href="kunden.aspx?id=<%=1 %>&datum=<%=DateTime.Now %>">
            <img src="~/images/vespa.jpg" runat="server"/>
        </a>
    </form>
</body>
</html>
