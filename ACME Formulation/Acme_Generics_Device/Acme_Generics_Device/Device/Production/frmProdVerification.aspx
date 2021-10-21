﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmProdVerification.aspx.cs"
    Inherits="frmPicking" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>e-Track | Version 1.0</title>
    <link href="../../Styles/Style_Controls.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/Style_Design.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/Style_Grid.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/ex.css" rel="stylesheet" type="text/css">
    <link href="../../cdn/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="../../cdn/jquery.min.js"></script>
    <script src="../../cdn/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../cdn/jquery.min.js"></script>
    <script type="text/javascript" src="../../cdn/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style type="text/css">
        .Label
        {
            font-family: Calibri;
            font-size: 11pt;
            color: Black;
            padding-left: 5px;
            padding-right: 5px;
            width: 100px;
            height: 22px;
            text-align: left;
        }
        
        .Button
        {
            border-color: #006699;
            border-width: 0px;
            background-image: url('../../App_Themes/Styles/Images/ButtonOut.png');
            font-family: Arial;
            font-size: 12px;
            color: #FFFFFF;
            width: 120px;
            height: 24px;
            text-align: center;
            vertical-align: middle;
            font-weight: bold;
            cursor: inherit;
        }
        
        .TextBox
        {
            border: 1px solid #c0c0c0;
            font-family: Arial;
            font-size: 10px;
            color: Black;
            margin-left: 0px;
            width: 350px;
            height: 18px;
            padding-left: 2px;
            padding-right: 2px;
        }
        
        .style1
        {
            height: 22px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <form role="form" class="form-horizontal" id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <table class="table" style="width: 100%">
            <tr>
                <td>
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td style="width: 98%; background-image: url('../../App_Themes/Styles/Images/Form_Title.JPG');
                                    background-repeat: repeat-x;" class="style1">
                                    <asp:Label ID="Label35" runat="server" CssClass="HeadingLabel" Text="&amp;nbsp;Production Verification"
                                        ForeColor="White" Font-Bold="True"></asp:Label>
                                </td>
                                <td colspan="2" style="height: 40px; width: 2%; background-image: url('../../App_Themes/Styles/Images/Form_Title.JPG');
                                    background-repeat: repeat-x">
                                    <asp:Button ID="btnimgClose" class="btn-danger" runat="server" Text="X" Width="30px"
                                        Height="25px" OnClick="btnimgClose_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td style="width: 90%">
                                    <asp:Label ID="Label2" runat="server" Text="Select Booth :"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 90%">
                                    <asp:DropDownList Width="100%" AutoPostBack="true" ID="ddlBoothCode" class="form-control"
                                        runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 2%">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlBoothCode"
                                        ErrorMessage="Select Booth code" ToolTip="Select Booth code" ValidationGroup="SAVE"><img
                                        src="../../App_Themes/Styles/Images/err1.png" title="Select Booth code!!!" /></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td style="width: 90%">
                                    <asp:Label ID="Label4" runat="server" Text="Enter Batch No. :"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 90%">
                                    <asp:TextBox ID="txtBatchNo" class="form-control" runat="server" autocomplete="off"
                                        Width="100%"></asp:TextBox>
                                </td>
                                <td style="width: 2%">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBatchNo"
                                        ErrorMessage="Enter Batch No." ToolTip="Select Booth code" ValidationGroup="SAVE"><img
                                        src="../../App_Themes/Styles/Images/err1.png" title="Enter Batch No.!!!" /></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td style="width: 90%">
                                    <asp:Label ID="Label9" runat="server" Text="Select Material Code :"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 90%">
                                    <asp:DropDownList Width="100%" AutoPostBack="true" ID="ddlMaterialCode" class="form-control"
                                        runat="server" OnSelectedIndexChanged="ddlMaterialCode_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 2%">
                                    <asp:RequiredFieldValidator ID="rvPWONo" runat="server" ControlToValidate="ddlMaterialCode"
                                        ErrorMessage="Select Material code" ToolTip="Select Material code" ValidationGroup="SAVE"><img
                                        src="../../App_Themes/Styles/Images/err1.png" title="Select Material code!!!" /></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td style="width: 50%">
                                    <asp:Label ID="Label3" runat="server" Text="Verify containers"></asp:Label>
                                </td>
                                <td style="width: 48%">
                                    <asp:Label ID="lblVerifyContainers" runat="server" Text=""></asp:Label>
                                </td>
                                <td style="width: 2%">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td style="width: 50%">
                                    <asp:Label ID="Label10" runat="server" Text="Scan Dispensing Barcode :"></asp:Label>
                                </td>
                                <td style="width: 48%">
                                    <asp:TextBox ID="txtDispBarcode" class="form-control" runat="server" autocomplete="off"
                                        Width="100%"></asp:TextBox>
                                </td>
                                <td style="width: 2%">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td colspan="2">
                                    <table width="100%">
                                        <tr>
                                            <td width="25%">
                                                <asp:Label ID="Label5" runat="server" Text="UOM :"></asp:Label>
                                            </td>
                                            <td width="25%">
                                                <asp:Label ID="lblUOM" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td width="25%">
                                                <asp:Label ID="Label7" runat="server" Text="AR No. :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblARNo" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <table class="table">
                                <tr>
                                    <td class="col-sm-2">
                                        <asp:Label ID="Label434" CssClass="Label" runat="server" Text="Gross wt." />
                                    </td>
                                    <td class="col-sm-1">
                                        <asp:Label ID="Label43" CssClass="Label" runat="server" Text="Tare wt."> </asp:Label>
                                    </td>
                                    <td class="col-sm-1">
                                        <asp:Label ID="Label44" CssClass="Label" runat="server" Text="Net wt."> </asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-sm-2">
                                        <asp:TextBox ID="txtGrossWt" runat="server" CssClass="form-control" AutoPostBack="true"
                                            onkeypress="return isDecimal(event)" autocomplete="off" Width="80px"> </asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Custom, Numbers"
                                            ValidChars="." TargetControlID="txtGrossWt" Enabled="True">
                                        </asp:FilteredTextBoxExtender>
                                    </td>
                                    <td class="col-sm-1">
                                        <asp:TextBox ID="txtTareWt" runat="server" CssClass="form-control" AutoPostBack="true"
                                            autocomplete="off" onkeypress="return isDecimal(event)" Width="80px"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Custom, Numbers"
                                            ValidChars="." TargetControlID="txtTareWt" Enabled="True">
                                        </asp:FilteredTextBoxExtender>
                                    </td>
                                    <td class="col-sm-1">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtNetWt" runat="server" ReadOnly="true" CssClass="form-control"
                                                        BackColor="LightGray" onkeypress="return isDecimal(event)" autocomplete="off"
                                                        Width="80px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblNetUom" runat="server" CssClass="Label" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="form-group">
                        <table width="100%">
                            <tr>
                                <td colspan="2">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="Scan Weight :"></asp:Label>
                                                <asp:TextBox ID="txtScanWeight" class="form-control" runat="server" autocomplete="off"
                                                    Width="50%"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" Text="Gross :"></asp:Label>
                                                <asp:TextBox ID="txtGross" class="form-control" runat="server" autocomplete="off"
                                                    Width="50%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-4">
                            <asp:Button ID="btnSave" runat="server" class="btn-primary" ValidationGroup="SAVE"
                                Text="Verify" Height="30px" Width="49%" OnClick="btnSave_Click" />
                            <asp:Button ID="btnClose" runat="server" class="btn-primary" Text="Close" Height="30px"
                                CausesValidation="false" Width="49%" OnClick="btnClose_Click" />
                        </div>
                    </div>
                    <asp:Button ID="btnScanBarcode" runat="server" float="left" class="btn-primary" Text="Scan Barcode"
                        Height="30px" Width="49%" CssClass="hidden" OnClick="btnScanBarcode_Click" ValidationGroup="SCAN" />
                    <asp:Button ID="btnBatchNo" runat="server" float="left" class="btn-primary" Text="Scan Batch"
                        Height="30px" Width="49%" CssClass="hidden" OnClick="btnBatchNo_Click" />
                    <asp:Button ID="btnScanWeighing" runat="server" float="left" class="btn-primary"
                        Text="Scan Weighing" Height="30px" Width="49%" CssClass="hidden" OnClick="btnScanWeighing_Click" />
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>
