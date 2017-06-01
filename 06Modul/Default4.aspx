<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="_06Modul_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <h1>ADO.NET </h1>
        <div class="col-md-8">
            <ul class="list-group">
                <asp:Repeater ID="rptListe" runat="server" EnableViewState="false"
                    ItemType="kunden"
                    SelectMethod="rptListe_GetData">
                    <ItemTemplate>
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col-md-1"><%#Item.CustomerID%></div>
                                <div class="col-md-3"><%#Item.CompanyName %></div>
                                <div class="col-md-3">
                                    <%#Item.ContactName %>
                                    <span class="pull-right badge"><%#Item.AnzOrders %></span>
                                </div>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

        </div>
    </div>
</asp:Content>

