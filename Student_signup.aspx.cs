using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
{
    string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
    string fullName = Request.Form["fullname"];
    string rollNumber = Request.Form["rollnumber"];
    string password = Request.Form["password"];
    string department = Request.Form["department"];
    string email = Request.Form["email"];

    // Check if password is at least 5 characters long and has at least 1 uppercase letter
    if (password.Length < 5 || !password.Any(char.IsUpper))
    {
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password should be at least 5 characters long and contain at least 1 uppercase letter');", true);
        return;
    }

    // check if roll number is in the correct format (20I-XXXX)
    Regex regex = new Regex(@"^22I-\d{4}$");
    if (!regex.IsMatch(rollNumber))
    {
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Roll number is not in the correct format (20I-XXXX)');", true);
        return;
    }
        // Check if email is in the correct format
        string rollNumberWithoutHyphen = rollNumber.Replace("-", ""); // remove hyphen from roll number
        string emailPrefix = "";

        // Extract batch number and student number using regular expression
        Match match = Regex.Match(rollNumberWithoutHyphen, @"^(\d{2})[a-zA-Z](\d{4})$");
        if (match.Success)
        {
            string batchNumber = match.Groups[1].Value;
            string studentNumber = match.Groups[2].Value;
            emailPrefix = "i" + batchNumber + studentNumber; // create email prefix
        }

        string expectedEmail = emailPrefix + "@nu.edu.pk"; // create expected email

        if (email != expectedEmail)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email is not in the correct format (" + expectedEmail + ")');", true);
            return;
        }




        // Check if roll number already exists in the database
        using (SqlConnection conn = new SqlConnection(connectionString))
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Student WHERE rollnumber=@RollNo", conn);
        cmd.Parameters.AddWithValue("@RollNo", rollNumber);
        int count = (int)cmd.ExecuteScalar();
        if (count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Roll number already exists in the database');", true);
            return;
        }

        // Insert new record into database
        SqlCommand cm = new SqlCommand("INSERT INTO Student (rollnumber, studentname, department, Spassword, Semail) VALUES (@RollNo, @Name, @Department, @Password, @Email)", conn);
        cm.Parameters.AddWithValue("@RollNo", rollNumber);
        cm.Parameters.AddWithValue("@Name", fullName);
        cm.Parameters.AddWithValue("@Department", department);
        cm.Parameters.AddWithValue("@Password", password);
        cm.Parameters.AddWithValue("@Email", email);
        cm.ExecuteNonQuery();

        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record inserted successfully');", true);
    }
}

       
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("manageAccount.aspx");
    }
}