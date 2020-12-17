<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Category_UC.ascx.cs" Inherits="OnlineFastFood.Customer.Category_UC" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;

    }
    .HeaderBarThreshold:hover
        {
            color: blue;      
        }
</style>
<div class="auto-style1">
<asp:DataList ID="DataList1" runat="server" CellPadding="4" BorderColor="#CC9966" ForeColor="#333333" Width="184px" Height="222px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#DAB273" Font-Bold="True" ForeColor="Black" />
    <HeaderTemplate>
        <div>
            <span><h4>Category</h4></span>
        </div>
    </HeaderTemplate>
    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <ItemTemplate>
        <h5>
        <asp:HyperLink CssClass="HeaderBarThreshold" ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Customer/Cust_Home.aspx?Cat_ID="+Eval("Cat_ID") %>' Text='<%# Eval("Cat_Title") %>'></asp:HyperLink></h5>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
</asp:DataList>

</div>