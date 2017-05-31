<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_05Modul_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#E3EAEB" />
        <DynamicSelectedStyle BackColor="#1C5E55" />
        <Items>
            <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            <asp:MenuItem Text="Neues Element" Value="Neues Element">
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Neues Element" Value="Neues Element">
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            <asp:MenuItem Text="Neues Element" Value="Neues Element">
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Neues Element" Value="Neues Element">
                <asp:MenuItem Text="Neues Element" Value="Neues Element"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#1C5E55" />
    </asp:Menu>
</asp:Content>

