using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class orderconfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            populateContactInformation();
            populateBillingAddress();
            populateShippingAddress();

        }        
    }

    private void populateBillingAddress()
    {
        if (Session["billing"] != null)
        {
            Address address = (Address)Session["billing"];
            lblStreet.Text = address.Street;
            lblCity.Text = address.City;
            lblState.Text = address.State;
            lblZip.Text = address.Zip;

        }
    }

    private void populateShippingAddress()
    {
        if (Session["shipping"] != null)
        {
            Address address = (Address)Session["shipping"];
            lblShipStreet.Text = address.Street;
            lblShipCity.Text = address.City;
            lblShipState.Text = address.State;
            lblShipZip.Text = address.Zip;

        }
    }

    private void populateContactInformation()
    {
        if (Session["user"] != null)
        {
            User user = (User)Session["user"];
            lblName.Text = user.FirstName + " " + user.LastName;
            lblEmail.Text = user.Email;
            lblPhoneNumber.Text = user.PhoneNumber;
        }
    }


}
