using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MarksEvaluation : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        // Retrieve input values from the request method
        string evalId = Request.Form["evalattendance_id"];
        string courseId = Request.Form["course_id"];
        string sectionId = Request.Form["section_id"];
        string rollNumber = Request.Form["roll_number"];
        string obtainedMarks = Request.Form["obtained"];
        string totalMarks = Request.Form["total"];
        string item = Request.Form["item"];
        string cInstructor = Request.Form["instructor_id"];
        string lInstructor = Request.Form["Linstructor_id"];

        // Insert the data into the "Evaluation" table using SQL queries
        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True"; // Replace with your actual database connection string
        string query = "INSERT INTO Evaluation (EvalId, courseId, sectionId, rollNumber, marksObt, totalMarks, item, CinstructorId, LinstructorId) " +
                       "VALUES (@EvalId, @courseId, @sectionId, @rollNumber, @obtainedMarks, @totalMarks, @item, @cInstructor, @lInstructor)";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Set parameter values to prevent SQL injection
                command.Parameters.AddWithValue("@EvalId", evalId);
                command.Parameters.AddWithValue("@courseId", courseId);
                command.Parameters.AddWithValue("@sectionId", sectionId);
                command.Parameters.AddWithValue("@rollNumber", rollNumber);
                command.Parameters.AddWithValue("@obtainedMarks", obtainedMarks);
                command.Parameters.AddWithValue("@totalMarks", totalMarks);
                command.Parameters.AddWithValue("@item", item);
                command.Parameters.AddWithValue("@cInstructor", cInstructor);
                command.Parameters.AddWithValue("@lInstructor", lInstructor);

                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }
    }


    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("facultyHome.aspx?id=" + id);
    } 

}