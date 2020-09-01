<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FoodDetails.aspx.cs" Inherits="OnlineFastFood.Admin.FoodDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 919px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="3" style="font-size: 18px; color: #000000"><span style="color: #C6A674; "><strong>Food Details</strong></span><span style="color: #000000"><br />
                </span></td>
        </tr> 
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 27px;"><span style="color: #000000">IItem Name</span></td>
            <td style="height: 27px; width: 919px">
                <asp:TextBox ID="txtitemname" runat="server" style="font-size: 18px" ForeColor="Black"></asp:TextBox>
            </td>
            <td style="height: 27px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><span style="color: #000000">Category </span></td>
            <td style="font-size: 18px; width: 919px">
                <asp:DropDownList ID="cat_dropdown" runat="server" style="font-size: 18px" Width="169px" ForeColor="Black">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><span style="color: #000000">Item details</span></td>
            <td style="width: 919px">
                <asp:TextBox ID="txtitemdetails" runat="server" style="font-size: 18px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><span style="color: #000000">Image 1</span></td>
            <td style="width: 919px">
                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" style="font-size: 18px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">IImage 2</td>
            <td style="width: 919px">
                <asp:FileUpload ID="FileUpload2" runat="server" ForeColor="Black" style="font-size: 18px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">Was Price</td>
            <td style="width: 919px">
                <asp:TextBox ID="txtwas" runat="server" style="font-size: 18px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">Now Price</td>
            <td style="width: 919px">
                <asp:TextBox ID="txtnow" runat="server" style="font-size: 18px" ForeColor="Black"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 919px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            </td>
            <td style="font-size: 18px; color: #000000; width: 919px">
                <asp:Button ID="Button2" runat="server" Text="Clear" style="font-size: 18px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 22px;"></td>
            <td style="font-size: 18px; width: 919px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="text-align:center; align-content:center; font-size: 18px; width: 919px" >
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False"  ForeColor="#C6A674" Width="885px" style="color: #000000" >
                    <Columns>
                        <asp:TemplateField HeaderText="Item Name">
                            <ItemTemplate>
                                <asp:Label ID="lbliname" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category Id">
                            <ItemTemplate>
                                <asp:Label ID="lblcatid" runat="server" Text='<%# Eval("Cat_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Item Details">
                            <ItemTemplate>
                                <asp:Label ID="lblitemdetails" runat="server" Text='<%# Eval("Item_Details") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Was Price">
                            <ItemTemplate>
                                <asp:Label ID="lblwasprice" runat="server" Text='<%# Eval("Was_Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Now Price">
                            <ItemTemplate>
                                <asp:Label ID="lblwasprice" runat="server" Text='<%# Eval("Was_Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations"></asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#C6A674" />
                    <PagerStyle BackColor="#C6A674" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 22px;"></td>
            <td style="font-size: 18px; width: 919px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; color: #000000; width: 919px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
