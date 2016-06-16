<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login Venue</h1>
        <hr />
        <table>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                </td>
                <td>
                    <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="RegisterLink" runat="server" PostBackUrl="Register.aspx">Register Venue</asp:LinkButton>
        <asp:LinkButton ID="RegisterFanLink" runat="server" PostBackUrl="RegisterFan.aspx">Register Fan</asp:LinkButton>
        <asp:LinkButton ID="LoginFanLink" runat="server" PostBackUrl="LoginFan.aspx">Login Fan</asp:LinkButton>
    </div>
    </form>
</body>
</html>
