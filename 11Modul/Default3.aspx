<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="_11Modul_Default3" %>

<%@ OutputCache Duration="20" VaryByParam="id" %>
<%@ Register Src="~/11Modul/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <h1>Page Caching </h1>
        <div class="col-md-12">
            <%=DateTime.Now %><br />
            <%=Request.QueryString["id"] %>

            <br />
            gefahr VaryByParam = none -> hier =id
          <br />
            <%=Request.QueryString["name"] %>
        </div>

        <uc1:WebUserControl runat="server" ID="WebUserControl" />
        <asp:Substitution ID="Substitution1" runat="server" MethodName="Updateimmer" />
    </div>

</asp:Content>

