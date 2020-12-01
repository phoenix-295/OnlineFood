<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_Regestration.aspx.cs" Inherits="OnlineFastFood.SuperAdmin.Admin_Regestration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">

                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" style="color: #000000" Font-Size="Medium" Height="258px" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="367px">
                    <WizardSteps>
                        <asp:WizardStep runat="server" Title="Reg">
                            <table class="style11">
                            <tr>
                                <td>
                                    FirstName</td>
                                <td>
                                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtfname" ErrorMessage="First Name cannot be empty." 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    Middle Name:</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtmname" ErrorMessage="Middle Name cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    Last Name:</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtlastname" ErrorMessage="Last Name cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mobile No:</td>
                                <td>
                                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtcontact" ErrorMessage="Mobile Number cannot be empty." 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please Enter a valid mobile number." MaximumValue="9999999999" MinimumValue="0" style="color: #FF0000" Type="Double">*</asp:RangeValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Mobile Number must be 10 Digit" style="color: #FF0000" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Address:</td>
                                <td>
                                    <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="txtadress" ErrorMessage="Address cannot be empty." 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Location:</td>
                                <td>
                                    <asp:TextBox ID="txtloc" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="txtloc" ErrorMessage="Location cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    City :</td>
                                <td class="style15">
                                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtcity" ErrorMessage="City cannot be empty." 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email Id:</td>
                                <td>
                                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="txtmail" ErrorMessage="Enter Valid Email Adress." 
                                        ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmail" ErrorMessage="Email cannot be empty." style="color: #FF0000">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Pin :</td>
                                <td>
                                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="txtpin" ErrorMessage="Pin Cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Pin must be 6 digit." style="color: #FF0000" ValidationExpression="[0-9]{6}" ControlToValidate="txtpin">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        </asp:WizardStep>
                        <asp:CreateUserWizardStep runat="server" />
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>

            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
