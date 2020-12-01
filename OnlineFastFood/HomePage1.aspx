<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="HomePage1.aspx.cs" Inherits="OnlineFastFood.HomePage1" %>

<%@ Register src="Food_Details_Small_UC.ascx" tagname="Food_Details_Small_UC" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="vertical-align:text-top; width: 921px;";>
        <asp:ScriptManager ID="MainScriptManager" runat="server" />
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
        <table  class="nav-justified">
        <tr style="vertical-align:top">
            <td>
                <uc1:Food_Details_Small_UC ID="Food_Details_Small_UC1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
    </div>
</asp:Content>
