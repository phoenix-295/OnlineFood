<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rpt.aspx.cs" Inherits="OnlineFastFood.Admin.Rpt" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="50px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="350px" ReuseParameterValuesOnRefresh="True" ToolPanelView="ParameterPanel" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                <Report FileName="~\Admin\CrystalReport1.rpt">
                </Report>
            </CR:CrystalReportSource>
        </div>
    </form>
</body>
</html>
