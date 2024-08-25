using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sections : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string allocationId = Request.Form["allocationid"];
        string sectionId = Request.Form["sectionid"];
        string rollNumber = Request.Form["rollnumber"];

        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                conn.Open();

                // Check if sectionId has reached maximum capacity (greater than 50)
                SqlCommand countCommand = new SqlCommand("SELECT COUNT(*) FROM student_Section WHERE sectionId = @sectionId", conn);
                countCommand.Parameters.AddWithValue("@sectionId", sectionId);

                int count = (int)countCommand.ExecuteScalar();
                if (count >= 50)
                {
                    // Display an error message if the section is at maximum capacity
             
                    string errorMessage = "The section is at maximum capacity.";
                    // Handle the error message appropriately
                    return;
                }

                SqlCommand insertCommand = new SqlCommand("INSERT INTO student_Section (id, sectionId, rollnumber) " +
                                                          "VALUES (@allocationId, @sectionId, @rollNumber)", conn);

                insertCommand.Parameters.AddWithValue("@allocationId", allocationId);
                insertCommand.Parameters.AddWithValue("@sectionId", sectionId);
                insertCommand.Parameters.AddWithValue("@rollNumber", rollNumber);

                insertCommand.ExecuteNonQuery();

                // Display a success message or perform any other necessary actions
            }
            catch (Exception ex)
            {
                // Handle the exception
            }
        }
    }


    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("academicsHome.aspx"); // Replace "HomePage.aspx" with the actual URL of your home page
    }
}