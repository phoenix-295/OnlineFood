<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Manage_Orders.aspx.cs" Inherits="OnlineFastFood.Admin.Manage_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style6">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <span style="color: #000000; font-size: medium;">Show Most Recent</span>
                <asp:TextBox ID="txtmr" runat="server" BackColor="White" ForeColor="White" 
                    style="color: #800000; font-size: medium;"></asp:TextBox>
                <span style="font-size: medium">&nbsp;</span><span style="color: #000000"><span style="font-size: medium">Record</span></span><span style="font-size: medium">s
                </span>
                <asp:Button ID="btngo" runat="server" 
                    style="font-family: 'Comic Sans MS'; font-size: medium" Text="Go" 
                    BackColor="Maroon" ForeColor="White" OnClick="btngo_Click" />
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2" style="height: 43px; font-size: 14pt;">
                <span style="color: #000000"><span style="font-size: medium">Show All Cancled Records</span>&nbsp;
                </span>
                <asp:Button ID="btng1" runat="server" 
                    style="font-family: 'Comic Sans MS'; font-size: 14pt" Text="Go" 
                    BackColor="Maroon" ForeColor="White" OnClick="btng1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: 14pt">
                <span style="color: #000000; font-size: medium;">Show All Verified Cancled Records</span>
                <asp:Button ID="brng2" runat="server" 
                    style="font-size: 14pt; font-family: 'Comic Sans MS'" Text="Go" 
                    BackColor="Maroon" ForeColor="White" OnClick="brng2_Click" />
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
            <asp:TemplateField HeaderText="OrderId">
                <ItemTemplate>
                    <asp:Label ID="lblorid" runat="server" Text='<%# Eval("order_id") %>' 
                        BackColor="White" style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date_Created") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Shipped"></asp:TemplateField>
            <asp:TemplateField HeaderText="Verified">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Convert.ToBoolean(Eval("Verified")) %>' 
                        style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dilevery Status">
                <ItemTemplate>
                    <asp:CheckBox ID="lblv" runat="server" 
                        Checked='<%# Convert.ToBoolean(Eval("Dilivery_Status")) %>' style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Payment Dilevery Status">
                <ItemTemplate>
                    <asp:CheckBox ID="lblpd" runat="server" 
                        Checked='<%# Convert.ToBoolean(Eval("Payment_Dilevery_Status")) %>' style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Completed">
                <ItemTemplate>
                    <asp:CheckBox ID="lblc" runat="server" Checked='<%# Convert.ToBoolean(Eval("Completed")) %>' 
                        style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cancled">
                <ItemTemplate>
                    <asp:CheckBox ID="lblcanc" runat="server" Checked='<%# Convert.ToBoolean(Eval("Cancled")) %>' 
                        style="color: #800000" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustomerName">
                <ItemTemplate>
                    <asp:Label ID="blname" runat="server" Text='<%# Eval("Coustmer_Name") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName">
                <ItemTemplate>
                    <asp:Label ID="lbluname" runat="server" Text='<%# Eval("User_Name") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Comment">
                <ItemTemplate>
                    <asp:Label ID="lblcmn" runat="server" Text='<%# Eval("Comment") %>' 
                        style="color: #800000"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Operations">
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
