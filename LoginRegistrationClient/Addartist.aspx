<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addartist.aspx.cs" Inherits="Addartist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1>Add artist</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Addshow.aspx">Add Show</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/lists.aspx">View Artists, Venues, and Shows</asp:HyperLink>
        <table>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Artist name is required" ControlToValidate="ArtistNameTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="ArtistEmailTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Artist email is required" ControlToValidate="ArtistEmailTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a valid email" ControlToValidate="ArtistEmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
               <td>Website</td>
                <td>
                    <asp:TextBox ID="ArtistWebPageTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="AddArtistSubmitButton" runat="server" Text="Submit" OnClick="AddArtistSubmitButton_Click" /></td>
                <td><asp:Label ID="AddArtistLabel" runat="server" Text=""></asp:Label></td>
            </tr>
         </table>
    </div>
    </form>
</body>
</html>
