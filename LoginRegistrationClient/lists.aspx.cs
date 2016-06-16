using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lists : System.Web.UI.Page
{
    SelectServiceReference.ShowTrackerServiceClient stc
        = new SelectServiceReference.ShowTrackerServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            FillVenueDropDown();
            FillArtistDropDown();
    }

    protected void VenuesButton_Click(object sender, EventArgs e)
    {
        string[] venues = stc.GetVenues();
        GridView1.DataSource = venues;
        GridView1.DataBind();
    }

    protected void ArtistsButton_Click(object sender, EventArgs e)
    {
        string[] artists = stc.GetArtistsOld();
        GridView1.DataSource = artists;
        GridView1.DataBind();
    }

    protected void ShowsButton_Click(object sender, EventArgs e)
    {
        string[] shows = stc.GetShows();
        GridView1.DataSource = shows;
        GridView1.DataBind();
    }

    protected void FillVenueDropDown()
    {
        string[] venues = stc.GetVenues();
        VenueDropDownList.DataSource = venues;
        VenueDropDownList.DataBind();
    }

    protected void GetVenueShowsButton_Click(object sender, EventArgs e)
    {
        string venue = VenueDropDownList.SelectedItem.Text;
        SelectServiceReference.VenueShow[] venueShows = stc.GetVenueShows(venue);
        GridView1.DataSource = venueShows;
        GridView1.DataBind();
    }

    protected void FillArtistDropDown()
    {
        string[] artists = stc.GetArtistsOld();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataBind();
    }

    protected void GetArtistShowsButton_Click(object sender, EventArgs e)
    {
        string artist = ArtistDropDownList.SelectedItem.Text;
        SelectServiceReference.ArtistShow[] artistShows = stc.GetArtistShows(artist);
        GridView1.DataSource = artistShows;
        GridView1.DataBind();
    }
}