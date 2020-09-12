<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Category_UC.ascx.cs" Inherits="OnlineFastFood.Category_UC" %>
<asp:DataList ID="DataList1" runat="server" CellPadding="4" BorderColor="#CC9966" ForeColor="#333333" Width="124px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#DAB273" Font-Bold="True" ForeColor="Black" />
    <HeaderTemplate>
        <div>
            <span><strong>Category</strong></span>
        </div>
    </HeaderTemplate>
    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../HomePage1.aspx?Cat_ID="+Eval("Cat_ID") %>' Text='<%# Eval("Cat_Title") %>'></asp:HyperLink>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
</asp:DataList>

