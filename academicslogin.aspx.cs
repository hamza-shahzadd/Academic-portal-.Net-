using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class academicslogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
        string Email = Request.Form["username"];
        string password = Request.Form["password"];
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Academics WHERE Aemail=@Email AND Apassword=@Password", conn);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@Password", password);
        int count = (int)cmd.ExecuteScalar();
        if (count > 0)
        {
            // successful login
            conn.Close();
            Response.Redirect("academicsHome.aspx");
        }
        else
        {
            // unsuccessful login
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid email or password');", true);
        }
    }

    protected void academics_Click(object sender, EventArgs e)
    {
        Response.Redirect("academic_signup.aspx");

    }
}