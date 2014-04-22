<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    
    <div id="contentDiv">
       
        <h1>Check Out Page</h1>
        <h2>Billing Information</h2>

        <label>First Name</label>
        <asp:TextBox ID="txtfirstName" runat="server" style="margin-left: 60px" Width="156px" ></asp:TextBox>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="txtfirstName" ForeColor="Red"></asp:RequiredFieldValidator>
        <br/><br />
       
        
        <label>Last Name</label>
        <asp:TextBox ID="lastName" runat="server" style="margin-left: 60px" Width="156px"></asp:TextBox>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="reqLastName" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="lastName" ForeColor="Red"></asp:RequiredFieldValidator>
        <br/><br />

        <label>Address</label>
        <asp:TextBox ID="address" runat="server" style="margin-left: 76px" Width="156px"></asp:TextBox>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="reqAddress" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />


        <label>City</label>
        <asp:TextBox ID="city" runat="server" style="margin-left: 100px" Width="156px"></asp:TextBox>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="reqCity" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />

        <label>State</label>
        <asp:DropDownList ID="state" runat="server" style="margin-left: 94px">
            <asp:ListItem>Please Select</asp:ListItem>
        </asp:DropDownList><br /><br />

        <label>Zip Code</label>
        <asp:TextBox ID="zipCode" runat="server" style="margin-left: 66px" Width="156px"></asp:TextBox>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="reqZipCode" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="zipcode" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="vldZip" runat="server" ErrorMessage="Enter Valid Zip Code" ControlToValidate="zipCode" ValidationExpression='\d{5}'></asp:RegularExpressionValidator>
        <br /><br />

        <label>Telephone</label>
        <asp:TextBox ID="telephone" runat="server" style="margin-left: 60px" Width="156px"></asp:TextBox>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="reqTelephone" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="telephone" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="vldPhone" runat="server" ErrorMessage="Enter Phone 000-123-4567" ControlToValidate="telephone" CssClass="validator" Display="Dynamic"
                ValidationExpression="\d{3}-\d{3}-\d{4}"></asp:RegularExpressionValidator>
        <br /><br />

        <label>Email address</label>
        <asp:TextBox ID="email" runat="server" style="margin-left: 38px" Width="156px"></asp:TextBox>&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="vldEmail" runat="server" ErrorMessage="You must enter a valid Email" Display="Dynamic"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" CssClass="validator"></asp:RegularExpressionValidator>
        <br /><br />
               <h3>Shipping address</h3>
            <div id="sameAsBilling">
                <asp:CheckBox ID="chkSameAsBilling" runat="server" AutoPostBack="true" 
                    Text="Same as billing address" OnCheckedChanged="chkSameAsBilling_CheckedChanged"/>
            <br /><br />
               
            </div>
            <label>Address: </label>
            <asp:TextBox ID="txtShipAddress" runat="server" style="margin-left: 20px" ></asp:TextBox> 
            <asp:RequiredFieldValidator ID="reqShipAddress" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="txtShipAddress" CssClass="validator"
                ValidationGroup="ShipTo"></asp:RequiredFieldValidator>
            <br />

            <label>City: </label>
            <asp:TextBox ID="txtShipCity" runat="server" style="margin-left: 45px"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="txtShipCity" CssClass="validator"
               ValidationGroup="ShipTo" ></asp:RequiredFieldValidator>
            <br />
            
            <label>State: </label>
            <asp:TextBox ID="txtShipState" runat="server" style="margin-left: 40px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqShipState" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="txtShipState" CssClass="validator"
                ValidationGroup="ShipTo"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="vldShipState" runat="server" ErrorMessage="Enter Valid State" ControlToValidate="txtShipState" CssClass="validator" Display="Dynamic"
                ValidationExpression="^[A-Za-z]{2}$" ValidationGroup="ShipTo"></asp:RegularExpressionValidator>
            <br />
           
             <label>Zip code: </label>
            <asp:TextBox ID="txtShipZip" runat="server" style="margin-left: 16px"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="reqshipZip" runat="server" ErrorMessage="Required Field" Display="Dynamic" ControlToValidate="txtShipZip" CssClass="validator"
                ValidationGroup="ShipTo"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="vldShipZip" runat="server" ErrorMessage="Enter Valid Zip Code"  ValidationExpression='\d{5}' ControlToValidate="txtShipZip"
                ValidationGroup="ShipTo"></asp:RegularExpressionValidator>
            <br />

      
        
        <asp:Button ID="btnCheckOut" runat="server" Text="Submit Order"  OnClick="btnCheckOut_Click" />
    

    </div>
</asp:Content>


