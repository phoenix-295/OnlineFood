<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FoodDetails.aspx.cs" Inherits="OnlineFastFood.Admin.FoodDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="3" style="font-size: 18px; color: #000000"><span style="color: #C6A674; "><strong>Food Details</strong></span><span style="color: #000000"><br />
                </span></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 27px;"><span style="color: #000000">IItem Name</span></td>
            <td style="height: 27px; width: 323px">
                <asp:TextBox ID="txtitemname" runat="server" style="font-size: 18px"></asp:TextBox>
            </td>
            <td style="height: 27px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><span style="color: #000000">Category </span></td>
            <td style="font-size: 18px; width: 323px">
                <asp:DropDownList ID="DropDownList1" runat="server" style="font-size: 18px" Width="169px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><span style="color: #000000">Item details</span></td>
            <td style="width: 323px">
                <asp:TextBox ID="txtitemdetails" runat="server" style="font-size: 18px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><span style="color: #000000">Image 1</span></td>
            <td style="width: 323px">
                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" style="font-size: 18px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">IImage 2</td>
            <td style="width: 323px">
                <asp:FileUpload ID="FileUpload2" runat="server" ForeColor="Black" style="font-size: 18px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">Was Price</td>
            <td style="width: 323px">
                <asp:TextBox ID="txtwas" runat="server" style="font-size: 18px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">Now Price</td>
            <td style="width: 323px">
                <asp:TextBox ID="txtnow" runat="server" style="font-size: 18px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </td>
            <td style="font-size: 18px; color: #000000; width: 323px">
                <asp:Button ID="Button2" runat="server" Text="Clear" style="font-size: 18px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; color: #000000; width: 323px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
