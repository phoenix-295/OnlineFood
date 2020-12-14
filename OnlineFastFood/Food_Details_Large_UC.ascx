<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Food_Details_Large_UC.ascx.cs" Inherits="OnlineFastFood.Food_Details_Large_UC" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        font-size: large;
    }
    .auto-style4 {
        text-align: left;
    }
</style>

<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" Width="751px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#DAB273" Font-Bold="True" ForeColor="Black" />
    <HeaderTemplate>
        <span style="text-align:center" class="auto-style3"> <h4>Item Details</h4></span>
    </HeaderTemplate>
    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td rowspan="5">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="400px" ImageUrl='<%# Eval("Image1") %>' />
                </td>
                <td class="auto-style4">
                    <h5><asp:Label ID="lblin" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><h5>Item Code:
                    <asp:Label ID="lblic" runat="server" Text='<%# Eval("Item_Code") %>'></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><h5>Was Price :
                    <asp:Label ID="lblwp" runat="server" Text='<%# Eval("Was_Price") %>'></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><h5>Now Price :
                    <asp:Label ID="lblnp" runat="server" Text='<%# Eval("Now_Price") %>'></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><h5> Item Details :
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("Item_Details") %>'></asp:Label></h5>
                </td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
</asp:DataList>

