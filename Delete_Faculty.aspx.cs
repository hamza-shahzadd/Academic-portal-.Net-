using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
            string id = Request.Form["rollnumber"];
            if (string.IsNullOrEmpty(id))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter an ID to delete.');", true);
                return;
            }

            SqlCommand cmd;
            if (id.StartsWith("C"))
            {
                cmd = new SqlCommand("DELETE FROM CourseInstructors WHERE CinstructorId=@id", connection);
            }
            else if (id.StartsWith("L"))
            {
                cmd = new SqlCommand("DELETE FROM Labinstructors WHERE LinstructorId=@id", connection);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid ID format.');", true);
                return;
            }

            cmd.Parameters.AddWithValue("@id", id);
            int rowsAffected = cmd.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                // successful delete
                Response.Redirect("academicsHome.aspx");
            }
            else
            {
                // unsuccessful delete
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Unable to delete user with given ID.');", true);
            }
        }
    }


    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("manageAccount.aspx");
    }
}


