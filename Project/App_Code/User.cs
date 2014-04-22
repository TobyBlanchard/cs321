using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;

    public User(String firstName, String lastName, String email, String phoneNumber)
    {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
    }

    public String FirstName { get { return firstName; } }
    public String LastName { get { return lastName; } }
    public String Email { get { return email; } }
    public string PhoneNumber { get { return phoneNumber; } }
}