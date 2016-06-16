using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addshow : System.Web.UI.Page
{
    ServiceReference1.LoginServiceClient lsc =
    new ServiceReference1.LoginServiceClient();

    SelectServiceReference.ShowTrackerServiceClient stc
        = new SelectServiceReference.ShowTrackerServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        FillArtistDropDown();
       
    }

    
    protected void AddShowSubmitButton_Click(object sender, EventArgs e)
    {
        AddShow();
    }

    protected void AddShow()
    {

        ServiceReference1.Show s = new ServiceReference1.Show();
        ServiceReference1.ShowDetail sd = new ServiceReference1.ShowDetail();

        s.ShowName = ShowNameTextBox.Text;
        s.ShowDate = DateTime.Parse (ShowDateTextBox.Text);
        s.ShowTime = TimeSpan.Parse (ShowTimeTextBox.Text);
        s.ShowTicketInfo = ShowTicketInfoTextBox.Text;
        s.VenueKey = (int) Session["UserKey"];
        //sd.Artist.ArtistName = ArtistDropDownList.SelectedItem.Text;
        sd.ArtistKey = int.Parse(ArtistDropDownList.SelectedValue.ToString());
        sd.ShowDetailArtistStartTime = TimeSpan.Parse (ShowDetailArtistStartTimeTextBox.Text);
        sd.ShowDetailAdditional = ShowDetailAdditionalTextBox.Text;

        bool result = lsc.AddShow(s, sd);

        if (result)
        {
            AddShowLabel.Text = "Show added";
        }
        else
        {
            AddShowLabel.Text = "Error. Show not added";
        }
    }

    protected void FillArtistDropDown()
    {

        SelectServiceReference.Artist[] artists = stc.GetArtists();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataTextField = "ArtistName";
        ArtistDropDownList.DataValueField = "ArtistKey";
        ArtistDropDownList.DataBind();
    }
}