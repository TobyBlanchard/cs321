using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void zipCode_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        if (!chkSameAsBilling.Checked)
        {
            Page.Validate("ShipTo");
        }

        if (IsValid)
        {
            User userProfile = new User(txtfirstName.Text, lastName.Text,email.Text, telephone.Text);
            Address billingAddress = new Address(address.Text, city.Text, state.Text, zipCode.Text);
            Address shippingAddress;
            shippingAddress = determingShippingAddress(billingAddress);

            Session["user"] = userProfile;
            Session["billing"] = billingAddress;
            Session["shipping"] = shippingAddress;

            Response.Redirect("~/orderconfirmation.aspx");


        }

    }

    private Address determingShippingAddress(Address billingAddress)
    {
        Address shippingAddress = new Address(txtShipAddress.Text, txtShipCity.Text, txtShipState.Text, txtShipZip.Text); ;
        if (chkSameAsBilling.Checked)
        {
            shippingAddress = billingAddress;
        }

        return shippingAddress;
    }

    protected void chkSameAsBilling_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSameAsBilling.Checked)
        {
            Boolean isReadOnly = true;
            modifyShippingAddress(address.Text, city.Text, state.Text, zipCode.Text, isReadOnly);
            foreach (BaseValidator validator in Page.GetValidators("ShipTo"))
            {
                validator.Enabled = false;
            }
        }
        else
        {
            Boolean isReadOnly = false;
            modifyShippingAddress("", "", "", "", isReadOnly);

            foreach (BaseValidator validator in Page.GetValidators("ShipTo"))
            {
                validator.Enabled = true;
            }
            Page.Validate("ShipTo");
        }

    }

    private void modifyShippingAddress(String address, String city, String state, String zip, Boolean isReadOnly)
    {
        txtShipAddress.Text = address;
        txtShipAddress.ReadOnly = isReadOnly;
        txtShipCity.Text = city;
        txtShipCity.ReadOnly = isReadOnly;
        txtShipState.Text = state;
        txtShipState.ReadOnly = isReadOnly;
        txtShipZip.Text = zip;
        txtShipZip.ReadOnly = isReadOnly;
    }
  
}
