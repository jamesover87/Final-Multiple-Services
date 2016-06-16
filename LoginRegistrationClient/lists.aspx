<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lists.aspx.cs" Inherits="lists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="VenuesButton" runat="server" Text="List All Venues" OnClick="VenuesButton_Click" />
        <asp:Button ID="ArtistsButton" runat="server" Text="List All Artists" OnClick="ArtistsButton_Click" />
        <asp:Button ID="ShowsButton" runat="server" Text="List All Shows" OnClick="ShowsButton_Click" />
    </div>
        <p></p>
        <asp:DropDownList ID="VenueDropDownList" runat="server"></asp:DropDownList>
        <asp:Button ID="GetVenueShowsButton" runat="server" Text="List Shows for this Venue" OnClick="GetVenueShowsButton_Click" />
        <p></p>
        <asp:DropDownList ID="ArtistDropDownList" runat="server"></asp:DropDownList>
        <asp:Button ID="GetArtistShowsButton" runat="server" Text="List Shows for this Artist" OnClick="GetArtistShowsButton_Click" />
        <p></p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>