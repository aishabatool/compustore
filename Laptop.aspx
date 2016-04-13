<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Laptop.aspx.cs" Inherits="Laptop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
            CellPadding="4" CellSpacing="2" DataKeyNames="SNO" DataSourceID="Oracle" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="SNO" HeaderText="SNO" ReadOnly="True" SortExpression="SNO" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="BRAND" HeaderText="BRAND" SortExpression="BRAND" />
                <asp:BoundField DataField="CONFIG" HeaderText="CONFIG" SortExpression="CONFIG" />
                <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
            </Columns>
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="Oracle" runat="server" ConnectionString="<%$ ConnectionStrings:Oracle_Lap %>"
            ProviderName="<%$ ConnectionStrings:Oracle_Lap.ProviderName %>" SelectCommand="SELECT SNO, MODEL, BRAND, CONFIG, PRICE FROM LAPTOP">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
