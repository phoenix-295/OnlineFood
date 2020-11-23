<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdminMaster.Master" AutoEventWireup="true" CodeBehind="Manage_Users.aspx.cs" Inherits="OnlineFastFood.SuperAdmin.Manage_Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"/>

    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style6">
    <tr>
        <td class="style8" style="width: 387px; color: #000000">
            
        </td>
        <td class="style11" style="width: 824px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" style="width: 387px">
            <asp:ListBox ID="ListBox4" runat="server" ForeColor="Black" Height="260px" Width="260px"></asp:ListBox>
        </td>
        <td class="style11" style="width: 824px">
            <asp:Button ID="Button1" runat="server" onclick="btngu_Click" 
                style="font-size: medium; font-family: 'Comic Sans MS'; color: #800000" 
                Text="Get User" />
        </td>
    </tr>
    <tr>
        <td class="style8" style="width: 387px">

            <asp:ListBox ID="ListBox5" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ListBox2_SelectedIndexChanged" ForeColor="Black" Height="260px" Width="260px"></asp:ListBox>
        </td>
        <td class="style11" style="width: 824px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" style="width: 387px">
            <asp:ListBox ID="ListBox6" runat="server" ForeColor="Black" Height="260px" Width="260px"></asp:ListBox>
        </td>
        <td class="style11" style="width: 824px">
            <asp:Button ID="Button2" runat="server" onclick="btndu_Click" 
                style="font-size: medium; font-family: 'Comic Sans MS'; color: #990000" 
                Text="Delete User" />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
        </ContentTemplate>
    </asp:UpdatePanel>

    <%--<table class="style6">
    <tr>
        <td class="style8" style="width: 387px; color: #000000">
            
        </td>
        <td class="style11" style="width: 824px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" style="width: 387px">
            <asp:ListBox ID="ListBox1" runat="server" ForeColor="Black" Height="260px" Width="260px"></asp:ListBox>
        </td>
        <td class="style11" style="width: 824px">
            <asp:Button ID="btngu" runat="server" onclick="btngu_Click" 
                style="font-size: medium; font-family: 'Comic Sans MS'; color: #800000" 
                Text="Get User" />
        </td>
    </tr>
    <tr>
        <td class="style8" style="width: 387px">

            <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ListBox2_SelectedIndexChanged" ForeColor="Black" Height="260px" Width="260px"></asp:ListBox>
        </td>
        <td class="style11" style="width: 824px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" style="width: 387px">
            <asp:ListBox ID="ListBox3" runat="server" ForeColor="Black" Height="260px" Width="260px"></asp:ListBox>
        </td>
        <td class="style11" style="width: 824px">
            <asp:Button ID="btndu" runat="server" onclick="btndu_Click" 
                style="font-size: medium; font-family: 'Comic Sans MS'; color: #990000" 
                Text="Delete User" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>--%>
</asp:Content>
