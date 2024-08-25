using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void delete_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string rollNumber = Request.Form["rollnumber"];

            // Validate rollnumber format
            if (!Regex.IsMatch(rollNumber, "^\\d{2}I-\\d{4}$"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter a valid roll number in the format of XXI-XXXX.');", true);
                return;
            }

            SqlCommand cmd = new SqlCommand("DELETE FROM Student WHERE rollnumber = @rollNumber", connection);
            cmd.Parameters.AddWithValue("@rollNumber", rollNumber);
            int rowsAffected = cmd.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                // Successful delete
                Response.Redirect("academicsHome.aspx");
            }
            else
            {
                // Unsuccessful delete
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Unable to delete user with given roll number.');", true);
            }
        }
    }


    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("manageAccount.aspx");
    }
}