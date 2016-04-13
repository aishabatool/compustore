<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>..:: Login Here ::..</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /><style type="text/css">
<!--
body {
	
}
.style1 {
	font-family: "Monotype Corsiva";
	font-size: xx-large;
	color: #999999;
}
-->
    </style></head>
<body>
    <form id="form1" runat="server">
    <div style="width: 209; height: 235">
        <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4"
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em"
            ForeColor="#333333" Height="100px" Width="201px" style="background-image: url(Images/pixbkgnd.gif)" TextLayout="TextOnTop">
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TextBoxStyle Font-Size="0.8em" />
            <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px"
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <LayoutTemplate>
              <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse; height: 151px; width: 143; background-image: url('Images/Picture1a.png'); vertical-align: bottom; direction: ltr; text-align: left" id="TABLE1" onclick="return TABLE1_onclick()">
                    <tr>
                        <td style="height: 34; width: 349; text-align: justify; background-image: url(Images/pixbkgnd.gif); color: sienna;">
                            <span style="font-size: 36pt; vertical-align: super; color: #999999; font-family: Monotype Corsiva;
                                background-color: transparent; text-align: center">&nbsp; 
                            Login Here!</span><table border="0" cellpadding="0" style="text-align: justify; width: 263px;">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; font-size: 0.9em; color: inactivecaptiontext;
                                        background-color: transparent">
                                        </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 81px; height: 30px; text-align: right;">
                                        <span style="font-size: 9pt; color: darkgoldenrod; text-align: justify;">User Name: </span>                                    </td>
                                    <td style="width: 136px; height: 30px">
                                        <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="108px">
                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 81px; text-align: right;">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" style="color: darkgoldenrod; text-align: justify" Width="80px">Password:</asp:Label></td>
                                    <td style="width: 136px">
                                        <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" Width="108px">
                                        </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                            ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." style="color: gray" />                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: red; height: 16px;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False">
                                        </asp:Literal>                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2" style="height: 17px">
                                        <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                            BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana"
                                            Font-Size="0.8em" ForeColor="#284E98" Text="Log In" ValidationGroup="Login1" style="background-image: url(Images/pixbkgnd.gif)" />                                    </td>
                                </tr>
                            </table>                        
                <asp:Button ID="SignupButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98"
                    Height="18px" PostBackUrl="~/Create.aspx" Text="Sign Up" Width="53px" style="background-image: url(Images/pixbkgnd.gif)" />
                            &nbsp; <span style="font-size: 8pt; color: sienna">
                    Click Here!
                    For New User<br />
                            </span>
                            <br />
                <asp:Button ID="PasswordButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98"
                    Height="18px" PostBackUrl="~/Change.aspx" Text="Change Password" Width="109px" style="background-image: url(Images/pixbkgnd.gif)" OnClick="PasswordButton_Click" />
                            <span style="font-size: 8pt; color: sienna; font-family: Tahoma">Click Here!</span>
                            <br />
                            <br />
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98"
                    Height="18px" PostBackUrl="~/Recovery.aspx" Text="Forgot Password" Width="110px" style="background-image: url(Images/pixbkgnd.gif)" />
                            <span style="font-size: 8pt; color: sienna; font-family: Tahoma">
                    Click Here!</span></td>
                    </tr>
              </table>
                            </LayoutTemplate>
        </asp:Login>
    </div>
    </form>
</body>
</html>