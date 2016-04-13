<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recovery.aspx.cs" Inherits="Recovery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>..:: Recovery Password ::..</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" style="background-image: url(Images/pixbkgnd.gif)" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
            <UserNameTemplate>
                <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse">
                    <tr>
                        <td style="height: 159px">
                            <table border="0" cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; font-size: 0.9em; color: purple;
                                        background-color: transparent; height: 36px; text-align: center;">
                                        <span style="font-size: 22pt; color: #808080; font-family: Monotype Corsiva">Forgot Your Password</span></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: black; font-style: italic">
                                        Enter your User Name to receive your password.</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" style="color: darkgoldenrod">User Name:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: red">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                            BorderStyle="Solid" BorderWidth="1px" CommandName="Submit" Font-Names="Verdana"
                                            Font-Size="0.8em" ForeColor="#284E98" Text="Submit" ValidationGroup="PasswordRecovery1" style="background-image: url(Images/pixbkgnd.gif)" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </UserNameTemplate>
            <QuestionTemplate>
                <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; font-size: 20pt; color: gray;
                                        font-family: 'Monotype Corsiva'">
                                        Identity Confirmation</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: appworkspace">
                                        Answer the following question to receive your password.</td>
                                </tr>
                                <tr>
                                    <td align="right" style="color: darkgoldenrod">
                                        User Name:</td>
                                    <td>
                                        <asp:Literal ID="UserName" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="color: darkgoldenrod">
                                        Question:</td>
                                    <td>
                                        <asp:Literal ID="Question" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" Style="color: darkgoldenrod">Answer:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                            ErrorMessage="Answer is required." ToolTip="Answer is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: red">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" BorderColor="RoyalBlue" BorderStyle="Solid"
                                            BorderWidth="1px" CommandName="Submit" Font-Names="Verdana" Font-Size="X-Small"
                                            Style="background-color: transparent" Text="Submit" ValidationGroup="PasswordRecovery1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </QuestionTemplate>
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <SuccessTextStyle Font-Bold="True" ForeColor="#990000" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            <SubmitButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px"
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        </asp:PasswordRecovery>
        <br />
    
    </div>
    </form>
</body>
</html>
