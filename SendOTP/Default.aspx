﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Enter Mobile No"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Send OTP" 
                        onclick="Button1_Click" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="Type OTP"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Varify" Height="33px" 
                        Width="102px" onclick="Button2_Click" />
                    <br />
                </asp:Panel></td>
        </tr>
    </table>
    <asp:Label ID="Label3" runat="server"></asp:Label>
    </form>
</body>
</html>
