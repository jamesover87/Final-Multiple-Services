<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addshow.aspx.cs" Inherits="Addshow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Add show</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Addartist.aspx">Add Artist</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/lists.aspx">View Artists, Venues, and Shows</asp:HyperLink>
        <table>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Show name is required" ControlToValidate="ShowNameTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Artist</td>
                <td>
                    <asp:DropDownList ID="ArtistDropDownList" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    <asp:TextBox ID="ShowDateTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Show must have a date" ControlToValidate="ShowDateTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Time</td>
                <td>
                    <asp:TextBox ID="ShowTimeTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Show must have a time" ControlToValidate="ShowTimeTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Ticket Info</td>
                <td>
                    <asp:TextBox ID="ShowTicketInfoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Artist Start Time</td>
                <td>
                    <asp:TextBox ID="ShowDetailArtistStartTimeTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Additional Show Detail</td>
                <td>
                    <asp:TextBox ID="ShowDetailAdditionalTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="AddShowSubmitButton" runat="server" Text="Submit" OnClick="AddShowSubmitButton_Click" /></td>
                <td><asp:Label ID="AddShowLabel" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    
    </div>
        
    </form>
</body>
</html>
