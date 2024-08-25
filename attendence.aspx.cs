using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class attendence : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("facultyHome.aspx?id=" + id);
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        // Retrieve the values from the input fields
        string attendanceId = Request.Form["attendance_id"];
        string courseId = Request.Form["course_id"];
        string sectionId = Request.Form["section_id"];
        string rollNumber = Request.Form["roll_number"];
        string currentDate = Request.Form["current_date"];
        string instructorId = Request.Form["instructor_id"];
        string labInstructorId = Request.Form["Linstructor_id"];
        string description = Request.Form["des"];

        // Perform the database insertion
        // Assuming you have a database connection named "connection" established
        using (SqlConnection connection = new SqlConnection("Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True"))
        {
            connection.Open();
            string query = "INSERT INTO Attendence (AttendenceId, CourseId, SectionId, RollNumber, DateA, CinstructorId, LinstructorId, Description) VALUES (@AttendanceId, @CourseId, @SectionId, @RollNumber, @DateA, @CinstructorId, @LinstructorId, @Description)";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@AttendanceId", attendanceId);
            command.Parameters.AddWithValue("@CourseId", courseId);
            command.Parameters.AddWithValue("@SectionId", sectionId);
            command.Parameters.AddWithValue("@RollNumber", rollNumber);
            command.Parameters.AddWithValue("@DateA", currentDate);
            command.Parameters.AddWithValue("@CinstructorId", instructorId);
            command.Parameters.AddWithValue("@LinstructorId", labInstructorId);
            command.Parameters.AddWithValue("@Description", description);
            command.ExecuteNonQuery();
            connection.Close();
        }

    }
}