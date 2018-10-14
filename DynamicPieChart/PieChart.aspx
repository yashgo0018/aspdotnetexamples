<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PieChart.aspx.cs" Inherits="PieChart" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional/ /EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 56%;
        }
        .style2
        {
            width: 91px;
        }
        .style3
        {
            width: 192px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    Select Roll No</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="rollno" DataValueField="rollno" 
                        Height="16px" Width="119px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="View Performance" Width="133px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PieChartConnectionString %>" 
        SelectCommand="SELECT [rollno] FROM [StudentData]"></asp:SqlDataSource>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <ajaxToolkit:PieChart ID="PieChart1" runat="server">
    </ajaxToolkit:PieChart>
    </form>
</body>
</html>
