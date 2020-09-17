<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Food_Details_Large_UC_Display.aspx.cs" Inherits="OnlineFastFood.Food_Details_Large_UC_Display" %>

<%@ Register src="Food_Details_Large_UC.ascx" tagname="Food_Details_Large_UC" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
                <div ;="" style="vertical-align:text-top; width: 921px;">
                    <table class="nav-justified">
                        <tr style="vertical-align:top">
                            <td>
                               
                                <uc1:Food_Details_Large_UC ID="Food_Details_Large_UC1" runat="server" />
                               
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
