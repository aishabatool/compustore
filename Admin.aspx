<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>..:: Customers Records ::..</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="PasswordQuestion" HeaderText="PasswordQuestion" SortExpression="PasswordQuestion" />
                <asp:BoundField DataField="PasswordAnswer" HeaderText="PasswordAnswer" SortExpression="PasswordAnswer" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CheckBoxField DataField="IsApproved" HeaderText="IsApproved" SortExpression="IsApproved" />
                <asp:CheckBoxField DataField="IsLockedOut" HeaderText="IsLockedOut" SortExpression="IsLockedOut" />
                <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" SortExpression="ApplicationId" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>"
            SelectCommand="SELECT * FROM [vw_aspnet_MembershipUsers] ORDER BY [ApplicationId]">
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SNO,S.NO"
            DataSourceID="Oracle">
            <Columns>
                <asp:BoundField DataField="SNO" HeaderText="SNO" ReadOnly="True" SortExpression="SNO" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="BRAND" HeaderText="BRAND" SortExpression="BRAND" />
                <asp:BoundField DataField="CONFIG" HeaderText="CONFIG" SortExpression="CONFIG" />
                <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                <asp:BoundField DataField="S.NO" HeaderText="S.NO" ReadOnly="True" SortExpression="S.NO" />
                <asp:BoundField DataField="MODEL1" HeaderText="MODEL1" SortExpression="MODEL1" />
                <asp:BoundField DataField="PRICE1" HeaderText="PRICE1" SortExpression="PRICE1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Oracle" runat="server" ConnectionString="<%$ ConnectionStrings:Oracle %>"
            ProviderName="<%$ ConnectionStrings:Oracle.ProviderName %>" SelectCommand="SELECT LAPTOP.*, DESKTOP.* FROM LAPTOP, DESKTOP">
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
