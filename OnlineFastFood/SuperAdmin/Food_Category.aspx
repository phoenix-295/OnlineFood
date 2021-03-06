﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdminMaster.Master" AutoEventWireup="true" CodeBehind="Food_Category.aspx.cs" Inherits="OnlineFastFood.SuperAdmin.Food_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 106px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cat_ID" PageSize="5" style="color: #000000; font-size: 11pt" Width="585px" ForeColor="#C6A674" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True" OnRowCommand="GridView1_RowCommand" AllowPaging="True" BackColor="White" BorderStyle="None" CellPadding="4" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="Category Title">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtnameedit" runat="server" Text='<%# Eval("Cat_Title") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtnameadd" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("Cat_title") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdescedit" runat="server" Text='<%# Eval("Cat_Desc") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtdescadd" runat="server"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("Cat_desc") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations">
                            <EditItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CausesValidation="False" CommandName="Update" Text="Update" />
                                <asp:Button ID="btncancel" runat="server" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnadd" runat="server" CommandName="AddNew" Text="Add New" />
                            </FooterTemplate>
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
        </tr>
        <tr>
            <td colspan="3" style="height: 22px; font-family: 'comic Sans MS'; font-size: 13px;" class="text-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblup" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
