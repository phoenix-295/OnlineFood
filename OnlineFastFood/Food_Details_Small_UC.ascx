<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Food_Details_Small_UC.ascx.cs" Inherits="OnlineFastFood.Food_Details_Small_UC" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        font-size: large;
    }
    .HeaderBarThreshold:hover
        {
            color: blue;      
        }
</style>

<asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="3" Width="776px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#DAB273" Font-Bold="True" ForeColor="Black" />
    <HeaderTemplate>
        <span style="text-align:center" class="auto-style2"><h4>Food Details</h4></span>
    </HeaderTemplate>
    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td rowspan="4" style="vertical-align:central">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image1") %>' Height="50px" Width="100px" />
                </td>
                <td>
                    <h5><asp:Label ID="lbliname" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td><h5>Was Price: 
                    <asp:Label ID="lblwasp" runat="server" Text='<%# Eval("Was_Price") %>'></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td><h5>Now Price:&nbsp;&nbsp;
                    <asp:Label ID="lblnowp" runat="server" Text='<%# Eval("Now_Price") %>'></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <h5><asp:HyperLink CssClass="HeaderBarThreshold" ID="HyperLink1" runat="server" NavigateUrl='<%# "../Food_Details_Large_UC_Display.aspx?Item_Code="+Eval("Item_Code") %>' Text='<%# Eval("Item_Name") %>'></asp:HyperLink></h5>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
</asp:DataList>

