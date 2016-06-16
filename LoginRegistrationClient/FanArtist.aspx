<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FanArtist.aspx.cs" Inherits="FanArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Select your artists and click enter to add them</p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3"></asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="Add Artists" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
        <p></p>
        <asp:Button ID="FanArtistButton" runat="server" Text="List all shows for the artists you currently follow" OnClick="VenuesButton_Click" />
        <p></p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
