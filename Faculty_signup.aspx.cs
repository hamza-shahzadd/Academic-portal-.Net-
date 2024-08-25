using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        string email = Request.Form["email"];
        string password = Request.Form["password"];

        // validate input
        bool isValid = false;
        if (Regex.IsMatch(ID, "^Cfac\\d{2}$") && Regex.IsMatch(password, "^(?=.*[A-Z]).{5,}$") && email.EndsWith("@nu.edu.pk"))
        {
            isValid = true;
        }
        else if (Regex.IsMatch(ID, "^Lfac\\d{2}$") && Regex.IsMatch(password, "^(?=.*[A-Z]).{5,}$") && email.EndsWith("@nu.edu.pk"))
        {
            isValid = true;
        }

        if (!isValid)
        {
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid input');", true);
            return;
        }

        // check if ID already exists in the database
        string tableName = "";
        string idColumnName = "";
        string nameColumnName = "";
        string emailColumnName = "";
        string passwordColumnName = "";
        if (ID.StartsWith("Cfac"))
        {
            tableName = "CourseInstructors";
            idColumnName = "CinstructorId";
            nameColumnName = "CIName";
            emailColumnName = "email";
            passwordColumnName = "Cpassword";
        }
        else if (ID.StartsWith("Lfac"))
        {
            tableName = "Labinstructors";
            idColumnName = "LinstructorId";
            nameColumnName = "LIName";
            emailColumnName = "Lemail";
            passwordColumnName = "Lapassword";
        }
        SqlCommand cmd = new SqlCommand($"SELECT COUNT(*) FROM {tableName} WHERE {idColumnName}=@ID", conn);
        cmd.Parameters.AddWithValue("@ID", ID);
        int count = (int)cmd.ExecuteScalar();
        if (count > 0)
        {
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ID already exists in the database');", true);
            return;
        }

        // insert new record into database
        SqlCommand cm = new SqlCommand($"INSERT INTO {tableName} ({nameColumnName}, {idColumnName}, {passwordColumnName}, {emailColumnName}) VALUES (@Name, @ID, @Password, @Email)", conn);
        cm.Parameters.AddWithValue("@Name", fullName);
        cm.Parameters.AddWithValue("@ID", ID);
        cm.Parameters.AddWithValue("@Password", password);
        cm.Parameters.AddWithValue("@Email", email);
        cm.ExecuteNonQuery();

        conn.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record inserted successfully');", true);
    }

    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("manageAccount.aspx");
    }
}