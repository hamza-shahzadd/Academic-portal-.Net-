using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_Assessment : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentHome.aspx?id=" + id);
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True"; // Replace with your actual connection string

        string feedbackId = Request.Form["feedback"];
        string courseId = Request.Form["course"];
        Random random = new Random();
        int feedbackScore = random.Next(60, 101); // Implement this method to retrieve the feedback score from the user input
        string sectionId = Request.Form["section"];
        string rollnumber = Request.Form["rollnumber"];
        string feedbackText = Request.Form["comments"];
        string cinstructorId = Request.Form["cinstructor"];
        string linstructorId = Request.Form["linstructor"];

        try
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO Feedback (feedbackId, courseId, feedback_score, sectionId, rollnumber, feedbackText, CinstructorId, LinstructorId) " +
                               "VALUES (@feedbackId, @courseId, @feedbackScore, @sectionId, @rollnumber, @feedbackText, @cinstructorId, @linstructorId)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@feedbackId", feedbackId);
                    command.Parameters.AddWithValue("@courseId", courseId);
                    command.Parameters.AddWithValue("@feedbackScore", feedbackScore);
                    command.Parameters.AddWithValue("@sectionId", sectionId);
                    command.Parameters.AddWithValue("@rollnumber", rollnumber);
                    command.Parameters.AddWithValue("@feedbackText", feedbackText);
                    command.Parameters.AddWithValue("@cinstructorId", cinstructorId);
                    command.Parameters.AddWithValue("@linstructorId", linstructorId);

                    command.ExecuteNonQuery();
                }

                connection.Close();
            }

            // Feedback successfully inserted into the table
            // Add any additional code or logic here
        }
        catch (Exception ex)
        {
            // Handle any exceptions that occur during the insertion process
            // Display an error message or perform error handling tasks as needed
        }
    }

}