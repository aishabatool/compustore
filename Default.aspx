<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>..:: Redirected Page ::... </title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: larger; text-transform: capitalize; color: #996600; font-style: italic; font-family: Consolas; font-variant: normal">
        &nbsp;<br />
        <br />
        <asp:LoginName ID="LoginName1" runat="server" Font-Bold="True" Font-Italic="True" />
        &nbsp;You Are Redirected To
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.html">Home Page</asp:HyperLink></div>
    </form>
</body>
</html>
