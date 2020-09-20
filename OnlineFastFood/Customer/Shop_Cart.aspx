<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Shop_Cart.aspx.cs" Inherits="OnlineFastFood.Customer.Shop_Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" DataKeyNames="Shop_Cart_ID" PageSize="5" style="color: #000000; font-size: 11pt" Width="708px" ForeColor="#C6A674" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" AllowPaging="True" BackColor="White" BorderStyle="None" CellPadding="4" OnPageIndexChanging="gv1_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField HeaderText="Item Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtiname" runat="server" Text='<%# Eval("Item_Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtqty" runat="server" Text='<%# Eval("Qty") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblqty" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtprice" runat="server" Text='<%# Eval("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblprice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <EditItemTemplate>
                                <asp:TextBox ID="txttot" runat="server" Text='<%# Eval("Total") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbltot" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations">
                            <EditItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CausesValidation="False" CommandName="Update" Text="Update" />
                                <asp:Button ID="btncancel" runat="server" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="btnedit" runat="server" CausesValidation="False" CommandName="Edit" CssClass="col-xs-offset-0" Text="Edit" Width="82px" />
                                <asp:Button ID="btndelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" />
                    <HeaderStyle BackColor="#C6A674" Font-Size="Small" Font-Underline="False" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#C6A674" ForeColor="White" VerticalAlign="Middle"/>
                   
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000000; font-size: large">Total is :
                <asp:Label ID="lbltot" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
