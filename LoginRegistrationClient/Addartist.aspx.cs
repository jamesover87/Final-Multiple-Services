using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addartist : System.Web.UI.Page
{
    ServiceReference1.LoginServiceClient lsc =
new ServiceReference1.LoginServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddArtistSubmitButton_Click(object sender, EventArgs e)
    {
        AddArtist();
    }

    protected void AddArtist()
    {
        ServiceReference1.Artist a = new ServiceReference1.Artist();

        a.ArtistName = ArtistNameTextBox.Text;
        a.ArtistEmail = ArtistEmailTextBox.Text;
        a.ArtistWebPage = ArtistWebPageTextBox.Text;
        a.ArtistDateEntered = DateTime.Now;

        bool result = lsc.AddArtist(a);

        if (result)
        {
            AddArtistLabel.Text = "Artist added";
        }
        else
        {
            AddArtistLabel.Text = "Error. Artist not added";
        }
    }
}