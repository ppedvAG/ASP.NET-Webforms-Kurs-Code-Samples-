<%@  Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="_04Modul_Default7" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <h1>FriendlyUrl</h1>
    <form id="form1" runat="server">
        <div>
            <ul>
                <% foreach (var segment in Request.GetFriendlyUrlSegments()) { %>
                <li><%: segment %></li>
                <% } %>
            </ul>

        </div>
    </form>
</body>
</html>
