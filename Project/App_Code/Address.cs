using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Address
/// </summary>
public class Address
{

    private String street;
    private String city;
    private String state;
    private String zip;

	public Address(String street, String city, String state, String zip)
	{
        this.street = street;
        this.city = city;
        this.state = state;
        this.zip = zip;

	}

    public String Street { get { return street; } }
    public String City { get { return city; } }
    public String State { get { return state; } }
    public String Zip { get { return zip; } }
}