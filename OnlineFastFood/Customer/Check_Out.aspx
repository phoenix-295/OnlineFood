<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Check_Out.aspx.cs" Inherits="OnlineFastFood.Customer.Check_Out" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style11" style="width: 69%; height: 346px">
    <tr>
        <td colspan="3" style="color: #000000; vertical-align:text-top"><h3 class="text-center">* Fields are Mandatory</h3></td>
    </tr>
    <tr>
        <td class="style19" style="color: #000000; height: 10px; font-size: 11pt"><h4>First Name:</h4></td>
        <td class="style20" style="height: 10px; font-size: 11pt">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="fname" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width: 50%;" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style21" style="height: 10px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="Enter First Name" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #000000; font-size: 11pt"><h4>Middle Name:</h4></td>
        <td>
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="mname" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mname" ErrorMessage="Enter Middle Name" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4>Last Name:</h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="lname" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Enter Last Name" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4>Adress: </h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="address" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage="Enter Adress" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4>Location :</h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="loc" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="loc" ErrorMessage="Enter Location" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4>City :</h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="city" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="city" ErrorMessage="Enter City" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4> Email :</h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="email" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18" style="font-size: 11pt; color: #FF0000">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="email" ErrorMessage="Enter Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4> Contact No: </h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="cntno" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cntno" ErrorMessage="Enter Contact No" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4> Pin Code : </h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="pin" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width:50%" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="pin" ErrorMessage="Enter Pin" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" style="color: #000000; font-size: 11pt"><h4> Shipping Adress :</h4></td>
        <td class="style24">
            <table class="nav-justified">
                <tr>
                    <td><span style="font-size: 11pt; color: #FF0000">*</span></td>
                    <td><asp:TextBox class="form-control" ID="shippingad" runat="server" style="color: #000000; font-size: 9pt; left: 0px; top: 0px; width:50%" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="shippingad" ErrorMessage="Enter Shipping Adress" style="font-size: 11pt; color: #FF0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14" style="color: #000000; font-size: 11pt"><h4> Amount :</h4></td>
        <td class="style17" colspan="2">
            <h4><asp:Label ID="lblamt" runat="server" style="color: #000000;"></asp:Label></h4>
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
