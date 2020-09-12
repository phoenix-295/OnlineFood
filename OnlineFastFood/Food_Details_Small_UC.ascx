<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Food_Details_Small_UC.ascx.cs" Inherits="OnlineFastFood.Food_Details_Small_UC" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: large;
    }
</style>

<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="3" Width="657px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#DAB273" Font-Bold="True" ForeColor="Black" />
    <HeaderTemplate>
        <strong><span class="auto-style2">Food Details</span></strong>
    </HeaderTemplate>
    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td rowspan="4">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image1") %>' Height="50px" Width="100px" />
                </td>
                <td>
                    <asp:Label ID="lbliname" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Was Price :
                    <asp:Label ID="lblwasp" runat="server" Text='<%# Eval("Was_Price") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Now Price :
                    <asp:Label ID="lblnowp" runat="server" Text='<%# Eval("Now_Price") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
</asp:DataList>

