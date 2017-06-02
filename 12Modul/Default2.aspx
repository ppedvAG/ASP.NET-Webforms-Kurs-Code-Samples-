<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_12Modul_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <h1>PageMethods ist ein miniWebservice</h1>
        <div class="col-md-12">
            <input id="Button1" type="button" value="button" onclick="refreshdata();"/>
            <div id="inhalt">
            </div>
        </div>
    </div>
    <script>
        function refreshdata() {
             $.ajax({
                type: "POST",
                url: "default2.aspx/getData",
                contentType: "application/json; charset=utf-8",
                data: '',
                dataType: "json",
                success: function (result) {

                    $('#inhalt').append(result.d);

                }
            });
        }
      

    </script>
</asp:Content>

