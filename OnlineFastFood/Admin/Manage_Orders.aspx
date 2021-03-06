﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Manage_Orders.aspx.cs" Inherits="OnlineFastFood.Admin.Manage_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style6">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 176px"><h4><span>Show Most Recent</span> </h4></td>
                        <td class="modal-sm" style="width: 261px">
                <span>
                <asp:TextBox class="form-control" Width="232px" ID="txtmr" runat="server" BackColor="White" ForeColor="White" 
                    style="color: #800000; font-size: medium;"></asp:TextBox></span>
                        </td>
                        <td class="modal-sm" style="width: 84px"><h4>&nbsp;Records</h4>
                        </td>
                        <td><asp:Button ID="btngo" runat="server" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" Text="Go" 
                    BackColor="Maroon" ForeColor="White" OnClick="btngo_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="height: 43px; font-size: 14pt; ">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 260px">
                <h4 style="width: 242px">Show All Cancled Records</h4>
                        </td>
                        <td>
                <span>
                <asp:Button ID="btng1" runat="server" 
                    style="font-family: 'Comic Sans MS'; font-size: 14pt" Text="Go" 
                    BackColor="Maroon" ForeColor="White" OnClick="btng1_Click" />
                    </span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: 14pt">
                
                <table class="nav-justified">
                    <tr>
                        <td style="width: 296px"><h4><span>Show All Verified Cancled Records</span></h4></td>
                        <td>
                <asp:Button ID="brng2" runat="server" 
                    style="font-size: 14pt; font-family: 'Comic Sans MS'" Text="Go" 
                    BackColor="Maroon" ForeColor="White" OnClick="brng2_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="text-center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" 
        style="font-family: 'Comic Sans MS'; font-size: medium" 
                    AllowPaging="True" 
                    PageSize="5" ForeColor="#C6A674">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Order Id</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblorid" runat="server" Text='<%# Eval("order_id") %>' 
                        BackColor="White" style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Date</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date_Created") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Verified</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Convert.ToBoolean(Eval("Verified")) %>' 
                        style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Dilivery Status</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="lblv" runat="server" 
                        Checked='<%# Convert.ToBoolean(Eval("Dilivery_Status")) %>' style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Payment Status</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="lblpd" runat="server" 
                        Checked='<%# Convert.ToBoolean(Eval("Payment_Dilevery_Status")) %>' style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Completed</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="lblc" runat="server" Checked='<%# Convert.ToBoolean(Eval("Completed")) %>' 
                        style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Canceled</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="lblcanc" runat="server" Checked='<%# Convert.ToBoolean(Eval("Cancled")) %>' 
                        style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Customer Name</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="blname" runat="server" Text='<%# Eval("Coustmer_Name") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>User Name</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbluname" runat="server" Text='<%# Eval("User_Name") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Comment</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcmn" runat="server" Text='<%# Eval("Comment") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <HeaderTemplate>
                    <div style="text-align:center">
                        <h4>Operations</h4>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# "../Admin/Displayorder.aspx?order_id="+Eval("order_id") %>' 
                        Text="View" style="color: #800000"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" Wrap="True" />
        <HeaderStyle BackColor="#C6A674" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
