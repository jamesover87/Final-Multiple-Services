using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        RegisterVenue();
    }

    protected void RegisterVenue()
    {
        ServiceReference1.LoginServiceClient lsc =
            new ServiceReference1.LoginServiceClient();

        ServiceReference1.Venue v = new ServiceReference1.Venue();
        ServiceReference1.VenueLogin vl = new ServiceReference1.VenueLogin();

        v.VenueName = VenueNameTextBox.Text;
        v.VenueAddress = VenueAddressTextBox.Text;
        v.VenueCity = VenueCityTextBox.Text;
        v.VenueState = VenueStateTextBox.Text;
        v.VenueZipCode = VenueZipCodeTextBox.Text;
        v.VenuePhone = VenuePhoneTextBox.Text;
        v.VenueEmail = VenueEmailTextBox.Text;
        v.VenueWebPage = VenueWebPageTextBox.Text;
        v.VenueAgeRestriction = 0;
        vl.VenueLoginUserName = VenueUserTextBox.Text;
        vl.VenueLoginPasswordPlain = VenuePassTextBox.Text;

        bool result = lsc.RegisterVenue(v, vl);

        if (result)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            ErrorLabel.Text = "Registration failed";
        }
    }
}