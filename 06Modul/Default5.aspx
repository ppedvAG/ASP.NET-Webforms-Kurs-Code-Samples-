<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="_06Modul_Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <h1>EntityFramework Customers</h1>
        <div class="col-md-8">
            <ul class="list-group">
                <asp:Repeater ID="rptListe" runat="server" EnableViewState="false"
                    ItemType="Customers"
                    SelectMethod="rptListe_GetData">
                    <ItemTemplate>
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col-md-1"><%#Item.CustomerID%></div>
                                <div class="col-md-3"><%#Item.CompanyName %></div>
                                <div class="col-md-3">
                                    <%#Item.ContactName %>
                                    <span class="pull-right badge"><%#Item.Orders.Count() %></span>
                                </div>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

        </div>
    </div>
</asp:Content>

