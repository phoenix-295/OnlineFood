<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Displayorder.aspx.cs" Inherits="OnlineFastFood.Admin.Displayorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"/>
    <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
                <table class="style6">
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                &nbsp;</td>
            <td class="style11" colspan="2" style="color: #000000; font-size: medium">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Date Created:
            </td>
            <td class="style20">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style15" style="font-size: medium" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Verified:
            </td>
            <td class="style20">
                <asp:CheckBox ID="chkv" runat="server" CssClass="style15" style="color: #000000; font-size: medium" ForeColor="Black" Height="30px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Dilevery Status:</td>
            <td class="style20">
                <asp:CheckBox ID="chkdel" runat="server" CssClass="style15" style="color: #000000; font-size: medium" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Date Shipped:
            </td>
            <td class="style20">
                <asp:TextBox ID="txrds" runat="server" CssClass="style15" Height="22px" style="font-size: medium" ForeColor="Black"></asp:TextBox>
                <span style="font-size: medium">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txrds" ErrorMessage="Enter Date" ForeColor="Red" style="color: #000000">*</asp:RequiredFieldValidator>
                </span><span style="color: #000000"><span style="font-size: medium">
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                </span></span>
            </td>
            <td>
                <asp:Button ID="btnupds" runat="server" BackColor="Maroon" ForeColor="White" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" Text="Update" 
                    onclick="btnupds_Click" />
            </td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Payment Recived Ststus:</td>
            <td class="style20">
                <asp:CheckBox ID="chkprs" runat="server" CssClass="style15" style="color: #000000; font-size: medium" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Completed:</td>
            <td class="style20">
                <asp:CheckBox ID="chkcom" runat="server" CssClass="style15" style="color: #000000; font-size: medium" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Canceld:</td>
            <td class="style20">
                <asp:CheckBox ID="chkcan" runat="server" CssClass="style15" style="color: #000000; font-size: medium" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Comments:</td>
            <td class="style20">
                <asp:TextBox ID="txtcom" runat="server" style="text-align: center; font-size: medium;" ForeColor="Black"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" style="color: #000000; font-size: medium"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnupcom" runat="server" BackColor="Maroon" ForeColor="White" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" Text="Update" 
                    onclick="btnupcom_Click" />
            </td>
        </tr>
        <tr>
            <td class="style16" style="color: #000000; font-size: medium">
                Customer Name:
            </td>
            <td class="style17">
                <asp:TextBox ID="txtcname" runat="server" CssClass="style15" Height="22px" style="font-size: medium" ForeColor="Black"></asp:TextBox>
            </td>
            <td class="style18">
            </td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Customer Email :</td>
            <td class="style20">
                <asp:TextBox ID="txtcemail" runat="server" CssClass="style15" style="font-size: medium" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" style="color: #000000; font-size: medium">
                Shiping Adress :</td>
            <td class="style20">
                <asp:TextBox ID="txtship" runat="server" CssClass="style15" style="font-size: medium" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="3">
                </td>
        </tr>
        <tr>
            <td class="style19" style="color: #000000; font-size: medium">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="btnv" runat="server" BackColor="White" ForeColor="Black" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" Text="Mark As Verified" 
                    Width="245px" onclick="btnv_Click" CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="color: #000000; font-size: medium">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="btnds" runat="server" BackColor="White" ForeColor="Black" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" 
                    Text="Mark Dilevery Status " Width="245px" onclick="btnds_Click" 
                    CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="color: #000000; font-size: medium">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="btnps" runat="server" BackColor="White" ForeColor="Black" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" 
                    Text="Mark Payment Status" Width="245px" onclick="btnps_Click" 
                    CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="color: #000000; font-size: medium">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="btncs" runat="server" BackColor="White" ForeColor="Black" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" 
                    Text="Mark Completed Status" Width="245px" onclick="btncs_Click" 
                    CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="color: #000000; font-size: medium">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="btncns" runat="server" BackColor="White" ForeColor="Black" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" 
                    Text="Mark cancled Ststus" Width="245px" onclick="btncns_Click" 
                    CausesValidation="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                <asp:Label ID="lblmsg" runat="server" style="color: #000000; font-size: medium"></asp:Label>
            </td>
            <td class="style20">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
                </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
