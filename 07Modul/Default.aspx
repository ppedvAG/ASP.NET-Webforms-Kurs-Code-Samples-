<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_07Modul_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row">
        <h1>Validierung</h1>
        <div class="col-md-4">
            <fieldset>
                <!-- Form Name -->
                <legend>einfügen</legend>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="textinput">email</label>
                    <asp:TextBox ID="txt1" runat="server"
                        required="true"
                        TextMode="Email"
                        CssClass="form-control input-md"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        Display="Dynamic" 
                        ControlToValidate="txt1"
                        ErrorMessage="muss was rein"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                         ControlToValidate="txt1"   Display="Dynamic"
                        ErrorMessage="keine email"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <!-- Button -->
                <div class="form-group">
                    <asp:Button ID="btn1" CssClass="btn btn-primary"
                        runat="server" Text="speichern" />
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>

