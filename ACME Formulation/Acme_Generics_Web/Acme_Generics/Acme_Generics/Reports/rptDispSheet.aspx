﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rptDispSheet.aspx.cs" Inherits="Reports_rptDispSheet" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="icon" href="~/App_Themes/Styles/Images/Acme_Generics_Logo.png">
    <title>Dispensing Sheet</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
            <asp:ScriptManager ID="Scriptmanager1" runat="server">
            </asp:ScriptManager>
            <rsweb:ReportViewer ID="rvDispSheet" runat="server" Height="414px" 
                Width="529px" >
            </rsweb:ReportViewer>
    </div>
    </form>
</body>
</html>
