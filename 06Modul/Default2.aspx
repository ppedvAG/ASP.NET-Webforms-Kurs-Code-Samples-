<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_06Modul_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:northwindConnectionString1 %>"
                SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
            <ul class="list-group">
                <asp:Repeater ID="Repeater1" runat="server"
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <li class="list-group-item">
                            <a href='<%# "detail.aspx?id="+Eval("CustomerID") %>'>
                                <%#Eval("CustomerID") %>
                                <%#Eval("CompanyName") %>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
</asp:Content>

