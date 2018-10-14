<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 431px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table class="style1">
            <tr>
                <td>
                    Select Player Name</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="165px" 
                        DataSourceID="SqlDataSource1" DataTextField="CrickterName" 
                        DataValueField="CrickterName">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Height="31px" Text="View Performance" 
                        Width="141px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CricketODIConnectionString %>" 
            SelectCommand="SELECT [CrickterName] FROM [OnedayMatch]"></asp:SqlDataSource>
    </div>
    <ajaxToolkit:LineChart ID="LineChart1" runat="server" ChartHeight="400" ChartWidth="600">
    </ajaxToolkit:LineChart>
    </form>
</body>
</html>
