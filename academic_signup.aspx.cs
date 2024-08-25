using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class academic_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();

        string fullName = Request.Form["fullname"];
        string ID = Request.Form["id"];
        string username = Request.Form["username"];
        string email = Request.Form["email"];
        string password = Request.Form["password"];

        // check if ID already exists in the database
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Academics WHERE Id=@ID", conn);
        cmd.Parameters.AddWithValue("@ID", ID);
        int count = (int)cmd.ExecuteScalar();
        if (count > 0)
        {
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ID already exists in the database');", true);
            return;
        }

        // check email format
        if (!email.EndsWith("@nu.edu.pk"))
        {
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid email format');", true);
            return;
        }

        // insert new record into database
        SqlCommand cm = new SqlCommand("INSERT INTO Academics (Id, username, Apassword, Academicsname, Aemail) VALUES (@ID, @username, @Password, @Name, @Email)", conn);
        cm.Parameters.AddWithValue("@ID", ID);
        cm.Parameters.AddWithValue("@username", username);
        cm.Parameters.AddWithValue("@Password", password);
        cm.Parameters.AddWithValue("@Name", fullName);
        cm.Parameters.AddWithValue("@Email", email);
        cm.ExecuteNonQuery();

        conn.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record inserted successfully');", true);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}