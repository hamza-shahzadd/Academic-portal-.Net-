using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourseAlloc_Cinstr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("academicsHome.aspx");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string courseInstructorId = Request.Form["course"];
        string allocationId = Request.Form["alloc"];

        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                conn.Open();

                // Check if the course instructor has already been assigned 3 courses
                SqlCommand countCommand = new SqlCommand("SELECT COUNT(*) FROM CInstructorAlloc WHERE CinstructorId = @courseInstructorId", conn);
                countCommand.Parameters.AddWithValue("@courseInstructorId", courseInstructorId);

                int count = (int)countCommand.ExecuteScalar();
                if (count >= 3)
                {
                    // Display an error message if the course instructor has already been assigned 3 courses
                    // You can handle this error message in your own way (e.g., display it in a label or show a popup)
                    string errorMessage = "The course instructor has already been assigned 3 courses.";
                    // Handle the error message appropriately
                    return;
                }

                SqlCommand insertCommand = new SqlCommand("INSERT INTO CInstructorAlloc (CinstructorId, allocationId) " +
                                                          "VALUES (@courseInstructorId, @allocationId)", conn);

                insertCommand.Parameters.AddWithValue("@courseInstructorId", courseInstructorId);
                insertCommand.Parameters.AddWithValue("@allocationId", allocationId);

                insertCommand.ExecuteNonQuery();

                // Display a success message or perform any other necessary actions
            }
            catch (Exception ex)
            {
                // Handle the exception
            }
        }
    }

}