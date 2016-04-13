<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change.aspx.cs" Inherits="Change" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>..:: Change Password ::..</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span style="font-size: 1.2em; color: #330099"></span>
        <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD"
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
            Font-Size="0.8em" style="background-image: url(Images/pixbkgnd.gif); background-color: transparent" Height="1px" OnChangedPassword="ChangePassword1_ChangedPassword" Width="452px">
            <CancelButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px"
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
            <ChangePasswordButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            <TextBoxStyle Font-Size="0.8em" />
            <ChangePasswordTemplate>
                <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse">
                    <tr>
                        <td style="width: 448px; height: 121px">
                            <table border="0" cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="font-weight: bold; font-size: 0.9em; color: gray;
                                        height: 62px; background-color: transparent">
                                        <span style="font-weight: normal; font-size: 16pt; vertical-align: middle; text-transform: capitalize;
                                            color: dimgray; font-style: normal; font-family: 'Monotype Corsiva'; text-align: center;
                                            font-variant: normal; background-image: url(Images/pixbkgnd.gif);">
                                            <br />
                                            <span style="font-size: 22pt"><strong>Change Password From Here!</strong></span></span><br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="height: 20px; width: 195px;">
                                        <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword"
                                            Style="color: darkgoldenrod">Password:</asp:Label></td>
                                    <td style="height: 20px; width: 191px;">
                                        <asp:TextBox ID="CurrentPassword" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                            ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 195px">
                                        <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword"
                                            Style="color: darkgoldenrod">New Password:</asp:Label></td>
                                    <td style="width: 191px">
                                        <asp:TextBox ID="NewPassword" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                            ErrorMessage="New Password is required." ToolTip="New Password is required."
                                            ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 195px">
                                        <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword"
                                            Style="color: darkgoldenrod">Confirm New Password:</asp:Label></td>
                                    <td style="width: 191px">
                                        <asp:TextBox ID="ConfirmNewPassword" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                            ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required."
                                            ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                            ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
                                            ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: red; height: 20px;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 195px">
                                        &nbsp; &nbsp;&nbsp;
                                        <asp:Button ID="ChangePasswordPushButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                            BorderStyle="Solid" BorderWidth="1px" CommandName="ChangePassword" Font-Names="Verdana"
                                            Font-Size="0.8em" ForeColor="#284E98" Style="background-image: url(Images/pixbkgnd.gif)"
                                            Text="Change Password" ValidationGroup="ChangePassword1" /></td>
                                    <td style="width: 191px">
                                        <asp:Button ID="CancelPushButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Cancel"
                                            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Style="background-image: url(Images/pixbkgnd.gif)"
                                            Text="Cancel" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ChangePasswordTemplate>
        </asp:ChangePassword>
    
    </div>
    </form>
</body>
</html>
