<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="OnlineFastFood.test" %>
<%@ Register src="Food_Details_Small_UC.ascx" tagname="Food_Details_Small_UC" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="vertical-align:text-top; width: 921px;";>
        <table  class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
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
    </table>
    </div>
    
</asp:Content>
