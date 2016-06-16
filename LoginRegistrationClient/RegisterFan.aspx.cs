using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterFan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        RegFan();
    }

    protected void RegFan()
    {
        ServiceReference1.LoginServiceClient lsc =
            new ServiceReference1.LoginServiceClient();

        ServiceReference1.Fan f = new ServiceReference1.Fan();
        ServiceReference1.FanLogin fl = new ServiceReference1.FanLogin();

        f.FanName = FanNameTextBox.Text;
        f.FanEmail = FanEmailTextBox.Text;
        fl.FanLoginUserName = FanUserTextBox.Text;
        fl.FanLoginPasswordPlain = FanPassTextBox.Text;

        bool result = lsc.RegisterFan(f, fl);

        if (result)
        {
            Response.Redirect("LoginFan.aspx");
        }
        else
        {
            ErrorLabel.Text = "Registration failed";
        }
    }
}