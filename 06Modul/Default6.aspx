<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="_06Modul_Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <h1>EntityFramework Customers, Orders</h1>
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

                                    <a class="btn btn-primary pull-right" role="button" data-toggle="collapse"
                                        href="#collapse<%#Item.CustomerID %>">
                                        <%#Item.Orders.Count() %></a>

                                </div>

                            </div>
                            <div class="row">
                                <div class="collapse panel panel-default" id="collapse<%#Item.CustomerID %>">
                                    <div class="panel-body">
                                        <asp:Repeater ID="rptOrders" runat="server" EnableViewState="false"
                                            ItemType="Orders" DataSource="<%#Item.Orders%>">
                                            <ItemTemplate>
                                                <div>
                                                    <%#Item.OrderDate %> <%#Item.ShipAddress %>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </div>
                                </div>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
</asp:Content>

