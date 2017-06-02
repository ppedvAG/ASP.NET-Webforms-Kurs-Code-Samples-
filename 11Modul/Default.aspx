<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_11Modul_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    <div class="row">
                 <div class="col-md-8">
                    <ul class="list-group">

                        <asp:Repeater ID="rptListe" runat="server" EnableViewState="false"
                            ItemType="todo"
                            SelectMethod="rptListe_GetData">
                            <ItemTemplate>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-md-2"><%#Item.ID%></div>
                                        <div class="col-md-6"><%#Item.Aufgabe %></div>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>

                </div>

    </div>
</asp:Content>

