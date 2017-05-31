<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="_06Modul_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:northwindConnectionString1 %>" 
        SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CustomerID" QueryStringField="id" Type="String" />
        </SelectParameters>
        
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1"
        RenderOuterTable="false"
        runat="server" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>' />
            <br />
            CompanyName:
            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
            <br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
            <br />
            ContactTitle:
            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
            <br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualisieren" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CustomerID:
            <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
            <br />
            CompanyName:
            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
            <br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
            <br />
            ContactTitle:
            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
            <br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Einfügen" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </InsertItemTemplate>
        <ItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
            <br />
            CompanyName:
            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Bind("CompanyName") %>' />
            <br />
            ContactName:
            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Bind("ContactName") %>' />
            <br />
            ContactTitle:
            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Bind("ContactTitle") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Region:
            <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
            <br />
            PostalCode:
            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Fax:
            <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
</asp:Content>

