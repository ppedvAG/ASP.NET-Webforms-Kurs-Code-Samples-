<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_12Modul_Default" %>

<table>
    <asp:repeater id="rptListe" runat="server" enableviewstate="false"
        itemtype="todo"
        selectmethod="rptListe_GetData">
                            <ItemTemplate>
                                <tr><td>
                               <%#Item.ID%>

                                    </td>
                                <td
                                    <%#Item.Aufgabe %></td>


                                </tr>
                            </ItemTemplate>
                        </asp:repeater>
</table>
