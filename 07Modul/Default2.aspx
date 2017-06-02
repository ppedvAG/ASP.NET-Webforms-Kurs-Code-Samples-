<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_07Modul_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <h1>Formular mit CRUD </h1>
        <div class="col-md-4">
            <asp:FormView ID="FormView1" runat="server" ItemType="Customers" 
                DataKeyNames="CustomerID"
                SelectMethod="FormView1_GetItem"
                UpdateMethod="FormView1_UpdateItem"
                InsertMethod="FormView1_InsertItem"
                DeleteMethod="FormView1_DeleteItem">
                <ItemTemplate>
                    <%#Item.CustomerID %>
                    <%#Item.CompanyName %><br />
                    <%#Item.ContactName %>
                    <asp:Button ID="EditButton" runat="server" Text="Edit" CommandName="Edit" />
                </ItemTemplate>
                <EditItemTemplate>
                    <%#Item.CustomerID %><br />
                    <asp:TextBox ID="TextBox1" runat="server" Text="<%#BindItem.CompanyName %>"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" runat="server" Text="<%#BindItem.ContactName %>"></asp:TextBox><br />
                    <asp:Button ID="CancelButton" runat="server" Text="Cancel" CommandName="Cancel" />
                    <asp:Button ID="UpdateButton" runat="server" Text="Update" CommandName="Update" />
                </EditItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>

