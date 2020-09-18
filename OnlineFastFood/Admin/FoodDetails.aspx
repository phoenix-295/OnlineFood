<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FoodDetails.aspx.cs" Inherits="OnlineFastFood.Admin.FoodDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     

    <table class="nav-justified">
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 919px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="3" style="font-size: 18px; color: #000000; height: 42px;"><span style="color: #C6A674; "><strong>Food Details</strong></span><span style="color: #000000"><br />
                </span></td>
        </tr> 
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 27px;"><span style="color: #000000">IItem Name</span></td>
            <td style="height: 27px; width: 919px">
                <asp:TextBox ID="txtitemname" runat="server" style="font-size: 18px" ForeColor="Black"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtitemname" ErrorMessage="Item Name Cannot Be empty" style="color: #FF0000">*</asp:RequiredFieldValidator>
                </strong>
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
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtitemdetails" ErrorMessage="Item Details Field cannot be empty." style="color: #FF0000">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><span style="color: #000000">Image 1</span></td>
            <td style="width: 919px">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 313px">
                              
                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" style="font-size: 18px" accept="image/png, image/jpeg" onchange="Filevalidation()"/>
                        </td>
                        <td>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Image 1 Cannot be empty" style="color: #FF0000">*</asp:RequiredFieldValidator>
                            </strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Must Be an Image File." style="color: #FF0000" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" >*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">IImage 2</td>
            <td style="width: 919px">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 313px">
                <asp:FileUpload ID="FileUpload2" runat="server" ForeColor="Black" style="font-size: 18px" accept="image/png, image/jpeg" onchange="Filevalidation1()"/>
                        </td>
                        <td>
                            <strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Image 2 Cannot be empty" style="color: #FF0000">*</asp:RequiredFieldValidator>
                            </strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Must Be an Image File." style="color: #FF0000" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 23px;">Was Price</td>
            <td style="width: 919px; height: 23px;">
                <asp:TextBox ID="txtwas" runat="server" style="font-size: 18px" ForeColor="Black"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtwas" ErrorMessage="Was Price Cannot Be Empty." style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtwas" ErrorMessage="Invalid Was price." MaximumValue="400" MinimumValue="0" style="color: #FF0000" Type="Integer">*</asp:RangeValidator>
                </strong>
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">Now Price</td>
            <td style="width: 919px">
                <asp:TextBox ID="txtnow" runat="server" style="font-size: 18px" ForeColor="Black"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtnow" ErrorMessage="Now Price Cannot Be Empty." style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtnow" ErrorMessage="Invalid Now Price." MaximumValue="400" MinimumValue="0" style="color: #FF0000" Type="Integer">*</asp:RangeValidator>
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 919px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 33px;">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            </td>
            <td style="font-size: 18px; color: #000000; width: 919px; height: 33px;">
                <asp:Button ID="btnclear" runat="server" Text="Clear" style="font-size: 18px" OnClick="btnclear_Click" CausesValidation="False" />
            </td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 22px;"></td>
            <td style="font-size: 18px; width: 919px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="text-align:center; align-content:center; font-size: 18px; width: 919px" >
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False"  ForeColor="#C6A674" Width="885px" style="color: #000000" OnRowUpdating="gv1_RowUpdating" DataKeyNames="Item_Code" OnRowDeleting="gv1_RowDeleting" AllowPaging="True" OnPageIndexChanging="gv1_PageIndexChanging" PageSize="5" >
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
                                <asp:Label ID="lblnowprice" runat="server" Text='<%# Eval("Now_Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations">
                            <EditItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="btncancel" runat="server" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnaddnew" runat="server" CommandName="AddNew" Text="Add New" />
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Button ID="btnedit" runat="server" CommandName="Update" Text="Edit" CausesValidation="False" />
                                <asp:Button ID="btndelete" runat="server" CommandName="Delete" Text="Delete" CausesValidation="False" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#C6A674" />
                    <PagerStyle BackColor="#C6A674" ForeColor="Black" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 22px;"></td>
            <td style="font-size: 18px; width: 919px; height: 22px;">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000" />
            </td>
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
    <script type = "text/javascript">

        function Filevalidation()
        {
             const fi = document.getElementById("<%=FileUpload1.ClientID%>"); 
        // Check if any file is selected. 
        if (fi.files.length > 0) { 
            for (const i = 0; i <= fi.files.length - 1; i++) { 
  
                const fsize = fi.files.item(i).size; 
                const file = Math.round((fsize / 1024)); 
                // The size of the file. 
                if (file >= 1096)
                { 
                    alert("File too Big, please select a file less than 1mb");
                    var x = null;
                    document.getElementById("<%=FileUpload1.ClientID%>").value = x;
                }
                else
                { 
                    document.getElementById('size').innerHTML = '<b>'
                        + file + '</b> KB';
                } 
            } 
        } 

        }

        function Filevalidation1()
        {
             const fi = document.getElementById("<%=FileUpload2.ClientID%>"); 
        // Check if any file is selected. 
        if (fi.files.length > 0) { 
            for (const i = 0; i <= fi.files.length - 1; i++) { 
  
                const fsize = fi.files.item(i).size; 
                const file = Math.round((fsize / 1024)); 
                // The size of the file. 
                if (file >= 1096)
                { 
                    alert("File too Big, please select a file less than 1mb");
                    var x = null;
                    document.getElementById("<%=FileUpload2.ClientID%>").value = x;
                }
                else
                { 
                    document.getElementById('size').innerHTML = '<b>'
                        + file + '</b> KB';
                } 
            } 
        } 

        }

    </script>
</asp:Content>
