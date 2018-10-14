<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        <asp:Label ID="Label1" runat="server" Text="Gaurav Shakya Tutorial" 
            Font-Bold="True" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            Text="Mark Attendence of Student Online Class Wise in ASP.net" Font-Bold="True" 
            ForeColor="#FF6666"></asp:Label>
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    Select Class</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="107px" 
                        DataSourceID="SqlDataSource1" DataTextField="class" DataValueField="class">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Show Attendence" Height="33px" 
                        onclick="Button1_Click" /></td>
            </tr>
        </table>
    </div>
    <p>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" 
            Height="184px" style="margin-bottom: 4px" Width="371px">
            <Columns>
                <asp:BoundField DataField="rollno" HeaderText="Roll Number" 
                    SortExpression="rollno">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="studentname" HeaderText="Student Name" 
                    SortExpression="studentname">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Mark Attendance">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                            Text="Present" GroupName="ra" />
                        &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Absent" 
                            GroupName="ra" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView></p>
    <p>
                    <asp:Button ID="Button2" runat="server" Text="Save Attendence" 
            Height="37px" onclick="Button2_Click" /></p>
    <p>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendenceSystemConnectionString %>" 
        SelectCommand="SELECT [class] FROM [StudentDetail]">
        </asp:SqlDataSource>
    <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendenceSystemConnectionString %>" 
        SelectCommand="SELECT [rollno], [studentname] FROM [StudentDetail] WHERE ([class] = @class)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="class" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>