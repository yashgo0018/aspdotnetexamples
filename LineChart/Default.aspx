<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table class="style1">
            <tr>
                <td class="style3">
                    Select Roll No
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                        DataTextField="rollno" DataValueField="rollno" Height="16px" Width="119px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="View Performance" Width="133px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PieChartConnectionString %>" 
            SelectCommand="SELECT [rollno] FROM [StudentData]"></asp:SqlDataSource>
    </div>
    <ajaxToolkit:BarChart ID="BarChart1" runat="server" ChartHeight="500" ChartWidth="800">
    </ajaxToolkit:BarChart>
    </form>
</body>
</html>
