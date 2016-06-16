<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterFan.aspx.cs" Inherits="RegisterFan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Fan Name</td>
                <td>
                    <asp:TextBox ID="FanNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FanNameTextBox" ErrorMessage="Venue name is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
        
            <tr>
                <td>Fan Email</td>
                <td>
                    <asp:TextBox ID="FanEmailTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FanEmailTextBox" ErrorMessage="Fan email is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FanEmailTextBox" ErrorMessage="Not a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>Fan Username</td>
                <td>
                    <asp:TextBox ID="FanUserTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FanUserTextBox" ErrorMessage="Fan username is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Fan Password</td>
                <td>
                    <asp:TextBox ID="FanPassTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FanPassTextBox" ErrorMessage="Fan password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="ConfirmPassTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="FanPassTextBox" ControlToValidate="ConfirmPassTextBox" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
        </table>
        <asp:LinkButton ID="RegisterLink" runat="server" PostBackUrl="Register.aspx">Register Venue</asp:LinkButton>
        <asp:LinkButton ID="LoginVenueLink" runat="server" PostBackUrl="default.aspx">Login Venue</asp:LinkButton>
        <asp:LinkButton ID="LoginFanLink" runat="server" PostBackUrl="LoginFan.aspx">Login Fan</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>