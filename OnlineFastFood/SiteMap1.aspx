<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="SiteMap1.aspx.cs" Inherits="OnlineFastFood.SiteMap1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
       .HeaderBarThreshold:hover
        {
            color: blue;      
        }
   </style>
    <table class="nav-justified">
    <tr>
        <td style="vertical-align:top">
            <asp:TreeView ID="TreeView1" CssClass="HeaderBarThreshold" runat="server" DataSourceID="SiteMapDataSource1">
            </asp:TreeView>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
