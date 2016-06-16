<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
                <td>Venue Name</td>
                <td>
                    <asp:TextBox ID="VenueNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="VenueNameTextBox" ErrorMessage="Venue name is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Venue Address</td>
                <td>
                    <asp:TextBox ID="VenueAddressTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="VenueAddressTextBox" ErrorMessage="Venue address is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Venue City</td>
                <td>
                    <asp:TextBox ID="VenueCityTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Venue State</td>
                <td>
                    <asp:TextBox ID="VenueStateTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Venue Zip Code</td>
                <td>
                    <asp:TextBox ID="VenueZipCodeTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="VenueZipCodeTextBox" ErrorMessage="Venue zip code is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Venue Phone</td>
                <td>
                    <asp:TextBox ID="VenuePhoneTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="VenuePhoneTextBox" ErrorMessage="Venue phone number is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Venue Email</td>
                <td>
                    <asp:TextBox ID="VenueEmailTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="VenueEmailTextBox" ErrorMessage="Venue email is required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="VenueEmailTextBox" ErrorMessage="Not a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Venue Web Page</td>
                <td>
                    <asp:TextBox ID="VenueWebPageTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Venue Username</td>
                <td>
                    <asp:TextBox ID="VenueUserTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="VenueUserTextBox" ErrorMessage="Venue username is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Venue Password</td>
                <td>
                    <asp:TextBox ID="VenuePassTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="VenuePassTextBox" ErrorMessage="Venue password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="ConfirmPassTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="VenuePassTextBox" ControlToValidate="ConfirmPassTextBox" ErrorMessage="Passwords do not match"></asp:CompareValidator>
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
        <asp:LinkButton ID="LoginLink" runat="server" PostBackUrl="default.aspx">Login Venue</asp:LinkButton>
        <asp:LinkButton ID="RegisterFanLink" runat="server" PostBackUrl="RegisterFan.aspx">Register Fan</asp:LinkButton>
        <asp:LinkButton ID="LoginFanLink" runat="server" PostBackUrl="LoginFan.aspx">Login Fan</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
