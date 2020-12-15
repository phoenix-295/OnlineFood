<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FoodCategory.aspx.cs" Inherits="OnlineFastFood.Admin.FoodCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="MainScriptManager" runat="server" />
        <asp:UpdatePanel ID="pnlHelloWorld" runat="server">
            <ContentTemplate>
                <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td  colspan="3" style="height: 106px">
                <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cat_ID" PageSize="5" style="color: #000000; font-size: 11pt" Width="585px" ForeColor="#DAB273" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ShowFooter="True" OnRowCommand="GridView1_RowCommand" AllowPaging="True" BackColor="White" BorderStyle="None" CellPadding="4" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnSorting="GridView1_Sorting" Height="257px">
                    <Columns>
                        
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <h4 style="ruby-align:center">&nbsp;&nbsp;&nbsp;Category Title</h4>
                            </HeaderTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtnameedit" runat="server" Text='<%# Eval("Cat_Title") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox class="form-control" placeholder="Category Name" ID="txtnameadd" runat="server" style="font-size: 9pt"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <h5>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblname" runat="server" Text='<%# Eval("Cat_title") %>'></asp:Label></h5>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <h4 style="ruby-align:center">&nbsp;&nbsp;&nbsp;Category Description</h4>
                            </HeaderTemplate>
                            <EditItemTemplate>
                                <asp:TextBox  ID="txtdescedit" runat="server" Text='<%# Eval("Cat_Desc") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox class="form-control" placeholder="Category Description" ID="txtdescadd" runat="server" style="font-size: 9pt"></asp:TextBox>
                            </FooterTemplate>
                            <ItemTemplate>
                                <h5>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbldesc" runat="server" Text='<%# Eval("Cat_desc") %>'></asp:Label></h5>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <h4 style="ruby-align:center">&nbsp;&nbsp;&nbsp;Operations</h4>
                            </HeaderTemplate>
                            <EditItemTemplate>
                                <asp:Button class="btn" ForeColor="White" Font-Size="12px" BackColor="#D9AE6A" ID="btnupdate" runat="server" CausesValidation="False" CommandName="Update" Text="Update" Height="35px" />
                                <asp:Button class="btn" ForeColor="White" Font-Size="12px" BackColor="#D9AE6A" ID="btncancel" runat="server" CommandName="Cancel" Text="Cancel" Height="35px" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:Button class="btn" ForeColor="White" Font-Size="12px" BackColor="#D9AE6A" ID="btnadd" runat="server" CommandName="AddNew" Text="Add New" />
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Button class="btn" ForeColor="White" Font-Size="12px" BackColor="#D9AE6A" ID="btnedit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" Width="82px" Height="35px" />
                                <asp:Button class="btn" ForeColor="White" Font-Size="12px" BackColor="#D9AE6A" ID="btndelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Height="35px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" />
                    <HeaderStyle BackColor="#C6A674" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#DAB273" ForeColor="White"/>
                   
                </asp:GridView>
                    </div>
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

                </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>
