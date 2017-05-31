<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="_05Modul_Default3" %>

<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" 
    tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <uc1:WebUserControl ID="WebUserControl2" runat="server" Farbe="red" />
    <uc1:WebUserControl ID="WebUserControl1" runat="server" Farbe="blue" />
</asp:Content>

