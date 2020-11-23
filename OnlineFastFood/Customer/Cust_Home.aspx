<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cust_Home.aspx.cs" Inherits="OnlineFastFood.Customer.Cust_Home" %>
<%@ Register src="Food_Details_Small_UC.ascx" tagname="Food_Details_Small_UC" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="vertical-align:text-top; width: 921px;";>

        <%--<asp:ScriptManager ID="MainScriptManager" runat="server" />--%>
        <asp:UpdatePanel ID="pnlHelloWorld1" runat="server">
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
