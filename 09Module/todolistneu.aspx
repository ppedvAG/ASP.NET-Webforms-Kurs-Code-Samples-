<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="todolistneu.aspx.cs" Inherits="_09Module_todolistneu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <h1>Updatepanel ToDo</h1>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="true" >
            <ContentTemplate>
                <div class="col-md-4">
                    <fieldset>

                        <!-- Form Name -->
                        <legend>TODO Items einfügen</legend>
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="textinput">Aufgabe</label>
                            <asp:TextBox ID="textinput" runat="server" CssClass="form-control input-md"></asp:TextBox>
                        </div>
                        <!-- Button -->
                        <div class="form-group">
                            <asp:Button ID="singlebutton" CssClass="btn btn-primary"
                                runat="server" Text="speichern" OnClick="singlebutton_Click" />
                        </div>


                    </fieldset>
                </div>
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

