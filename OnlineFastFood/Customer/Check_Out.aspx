<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Check_Out.aspx.cs" Inherits="OnlineFastFood.Customer.Check_Out" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style11" style="width: 69%; height: 346px">
    <tr>
        <td class="text-center" colspan="3" style="color: #000000; font-size: medium">* Fields are Mandatory</td>
    </tr>
    <tr>
        <td class="style19" style="color: #000000; height: 10px; font-size: 11pt">First Name:</td>
        <td class="style20" style="height: 10px; font-size: 11pt"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="fname" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style21" style="height: 10px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="Enter First Name" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #000000; font-size: 11pt">Middle Name:</td>
        <td><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="mname" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mname" ErrorMessage="Enter Middle Name" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">Last Name:</td>
        <td class="style24"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="lname" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Enter Last Name" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">Adress: </td>
        <td class="style24"><span style="font-size: 11pt">*</span><asp:TextBox ID="address" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage="Enter Adress" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">Location :</td>
        <td class="style24"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="loc" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="loc" ErrorMessage="Enter Location" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">City :</td>
        <td class="style24"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="city" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="city" ErrorMessage="Enter City" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">Email :</td>
        <td class="style24"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="email" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18" style="font-size: 11pt; color: #FF0000">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="email" ErrorMessage="Enter Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">Contact No:</td>
        <td class="style24"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="cntno" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cntno" ErrorMessage="Enter Contact No" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">Pin Code :</td>
        <td class="style24"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="pin" runat="server" style="font-size: 11pt" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="pin" ErrorMessage="Enter Pin" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt">Shipping Adress :</td>
        <td class="style24"><span style="font-size: 11pt; color: #FF0000">*</span><asp:TextBox ID="shippingad" runat="server" style="color: #000000; font-size: 11pt" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="shippingad" ErrorMessage="Enter Shipping Adress" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14" style="color: #000000; font-size: 11pt">Amount :</td>
        <td class="style17" colspan="2">
            <asp:Label ID="lblamt" runat="server" style="color: #000000; font-size: 11pt"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style22" style="height: 36px">
            <asp:Button ID="btns" runat="server" ForeColor="Black" style="font-family: 'Comic Sans MS'; font-size: 11pt;" Text="Submit" OnClick="btns_Click" />
        </td>
        <td class="style16" colspan="2" style="color: #000000; font-size: 11pt; height: 36px"></td>
    </tr>
    <tr>
        <td class="style13" colspan="3">
            <asp:Label ID="lblsuccess" runat="server" style="color: #000000; font-size: 11pt"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style13" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="text-align: center; color: #FF0000; font-size: 11pt;" />
        </td>
    </tr>
</table>
</asp:Content>
