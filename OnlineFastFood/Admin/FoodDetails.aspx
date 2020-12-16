<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FoodDetails.aspx.cs" Inherits="OnlineFastFood.Admin.FoodDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <%--<asp:ScriptManager ID="MainScriptManager" runat="server" />
        <asp:UpdatePanel ID="pnlHelloWorld" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="gv1" EventName="RowUpdating"/>
            </Triggers>--%>
            <%--<ContentTemplate>--%>
                <div class="input-group">
                <table class="nav-justified">
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px">&nbsp;</td>
            <td style="font-size: 18px; width: 919px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="3" style="font-size: 24px; color: #000000; height: 42px;"><span style="color: #C6A674; "><strong>Food Details</strong></span><span style="color: #000000"><br />
                </span></td>
        </tr> 
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 27px;"><h4><span style="color: #000000">Item Name</span></h4></td>
            <td style="height: 27px; width: 919px">
                <asp:TextBox class="form-control"  ID="txtitemname" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width: 25%;" ForeColor="Black"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtitemname" ErrorMessage="Item Name Cannot Be empty" style="color: #FF0000">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td style="height: 27px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><h4><span style="color: #000000">Category </span></h4></td>
            <td style="font-size: 18px; width: 919px">
                <asp:DropDownList ID="cat_dropdown" runat="server" style="font-size: 18px" Width="169px" ForeColor="Black">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><h4><span style="color: #000000">Item details</span></h4></td>
            <td style="width: 919px">
                <asp:TextBox class="form-control" ID="txtitemdetails" runat="server" style="font-size: 9pt; left: 0px; top: 0px; width: 25%;" ForeColor="Black"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtitemdetails" ErrorMessage="Item Details Field cannot be empty." style="color: #FF0000">*</asp:RequiredFieldValidator>
                </strong>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><h4><span style="color: #000000">Image 1</span></h4></td>
            <td style="width: 919px">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 313px">
                              
                <asp:FileUpload class="btn btn-sm float-left" ID="FileUpload1" runat="server" ForeColor="Black" style="font-size: 11pt" accept="image/png, image/jpeg, image/jpg, image/png" onchange="Filevalidation()" Width="331px"/>
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
            <td style="font-size: 18px; color: #000000; width: 205px"><h4>Image 2</h4></td>
            <td style="width: 919px">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 313px">
                <asp:FileUpload class="btn btn-sm float-left" ID="FileUpload2" runat="server" ForeColor="Black" style="font-size: 11pt" accept="image/png, image/jpeg" onchange="Filevalidation1()" Width="331px"/>
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
            <td style="font-size: 18px; color: #000000; width: 205px; height: 23px;"><h4> Was Price</h4></td>
            <td style="width: 919px; height: 23px;">
                <asp:TextBox class="form-control" style="font-size: 9pt; left: 0px; top: 0px; width: 25%;" ID="txtwas" runat="server"  ForeColor="Black"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtwas" ErrorMessage="Was Price Cannot Be Empty." style="color: #FF0000">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtwas" ErrorMessage="Invalid Was price." MaximumValue="400" MinimumValue="0" style="color: #FF0000" Type="Integer">*</asp:RangeValidator>
                </strong>
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px"><h4>Now Price</h4></td>
            <td style="width: 919px">
                <asp:TextBox class="form-control" style="font-size: 9pt; left: 0px; top: 0px; width: 25%;" ID="txtnow" runat="server" ForeColor="Black"></asp:TextBox>
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
                <h5><asp:Button BackColor="#DAB273" ForeColor="White" ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" Width="82px" Height="35px" /></h5>
            </td>
            <td style="font-size: 18px; color: #000000; width: 919px; height: 33px;">
                <h5><asp:Button ForeColor="White" BackColor="#DAB273" ID="btnclear" runat="server" Text="Clear" OnClick="btnclear_Click" CausesValidation="False" Width="82px" Height="35px"/></h5>
            </td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; width: 205px; height: 22px;"></td>
            <td style="font-size: 18px; width: 919px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="font-size: 18px; color: #000000; " colspan="3">
                <asp:GridView ID="gv1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Item_Code" ForeColor="#C6A674" OnPageIndexChanging="gv1_PageIndexChanging" OnRowDeleting="gv1_RowDeleting" OnRowUpdating="gv1_RowUpdating" PageSize="5" style="color: #000000" Width="885px" Height="199px">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <div style="text-align:center">
                                <h4>Item Name</h4>
                                    </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <h5 style="text-align:center"><asp:Label ID="lbliname" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label></h5>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <div style="text-align:center">
                                    <h4>Category Id</h4>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <h5 style="text-align:center"><asp:Label ID="lblcatid" runat="server" Text='<%# Eval("Cat_ID") %>'></asp:Label></h5>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <div style="text-align:center">
                                    <h4>
                                        Item Details
                                    </h4>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <h5 style="text-align:center"><asp:Label ID="lblitemdetails" runat="server" Text='<%# Eval("Item_Details") %>'></asp:Label></h5>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <div style="text-align:center">
                                    <h4>
                                        Was Price
                                    </h4>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <h5 style="text-align:center"><asp:Label ID="lblwasprice" runat="server" Text='<%# Eval("Was_Price") %>'></asp:Label></h5>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <div style="text-align:center">
                                    <h4>
                                        Now Price
                                    </h4>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <h5 style="text-align:center"><asp:Label ID="lblnowprice" runat="server" Text='<%# Eval("Now_Price") %>'></asp:Label></h5>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <div style="text-align:center">
                                    <h4>
                                        Operations
                                    </h4>
                                </div>
                            </HeaderTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btnupdate" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="btncancel" runat="server" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnaddnew" runat="server" CommandName="AddNew" Text="Add New" />
                            </FooterTemplate>
                            <ItemTemplate>
                                <div style="vertical-align:central">
                                <h5><span><asp:Button  ForeColor="White" BackColor="#D9AE6A" ID="btnedit" runat="server" CausesValidation="False" CommandName="Update" Text="Edit" Width="82px" Height="35px"/>
                                <asp:Button ForeColor="White" BackColor="#D9AE6A" ID="btndelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Width="82px" Height="35px"/></span></h5>
                                    </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#C6A674" ForeColor="#FFFFCC" />
                    <PagerStyle HorizontalAlign="Center" BackColor="#C6A674" ForeColor="Black" />
                </asp:GridView>
            </td>
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

                    </div>
                <%--</ContentTemplate>
</asp:UpdatePanel>--%>




    
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
