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
                                        ControlToValidate="txtfname" ErrorMessage="First Name Shouldnt Be Blank" 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    Middle Name:</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtmname" ErrorMessage="Enter Middle Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    Last Name:</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtlastname" ErrorMessage="Enter Last Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Contact No:</td>
                                <td>
                                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtcontact" ErrorMessage="Please Enter Conact Number" 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Adress:</td>
                                <td>
                                    <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="txtadress" ErrorMessage="Please Enter Adress" 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Location:</td>
                                <td>
                                    <asp:TextBox ID="txtloc" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="txtloc" ErrorMessage="Please Enter Location" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    City :</td>
                                <td class="style15">
                                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtcity" ErrorMessage="Please Enter City" 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email Id:</td>
                                <td>
                                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="txtmail" ErrorMessage="Enter Valid Email Adress" 
                                        ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Pin :</td>
                                <td>
                                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="txtpin" ErrorMessage="Please Enter Pin" ForeColor="Red">*</asp:RequiredFieldValidator>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
