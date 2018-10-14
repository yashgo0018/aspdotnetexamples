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
        .style2
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    No of Products in your Cart:-<asp:Label 
        ID="Label4" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label>
    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/AddtoCart.aspx">Show Cart</asp:HyperLink>
    <br />
    <div>
    
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" 
            RepeatColumns="4" RepeatDirection="Horizontal" 
            onitemcommand="DataList1_ItemCommand">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            Product ID:-<asp:Label ID="Label1" runat="server" 
                                Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="199px" 
                                ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            Rs:-<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" CommandName="addToCart" 
                                Text="Add to Cart" CommandArgument='<%# Eval("ProductID") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingCartConnectionString %>" 
            SelectCommand="SELECT * FROM [ProductDetail]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
