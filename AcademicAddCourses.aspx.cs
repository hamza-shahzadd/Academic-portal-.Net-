using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class AcademicAddCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string courseId = Request.Form["courseid"];
        byte semester = Convert.ToByte(Request.Form["semester"]);
        string courseName = Request.Form["name"];
        byte creditHours = Convert.ToByte(Request.Form["credits"]);
        string prereqId = Request.Form["prereq"];
        string cCoordinator = Request.Form["ccoordinator"];
        string lCoordinator = Request.Form["lcoordinator"];

        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                conn.Open();

                SqlCommand command = new SqlCommand("INSERT INTO courses (courseId, semester, courseName, creditHours, prereqId, CCoordinator, LCoordinator) " +
                                                    "VALUES (@courseId, @semester, @courseName, @creditHours, @prereqId, @cCoordinator, @lCoordinator)", conn);

                command.Parameters.AddWithValue("@courseId", courseId);
                command.Parameters.AddWithValue("@semester", semester);
                command.Parameters.AddWithValue("@courseName", courseName);
                command.Parameters.AddWithValue("@creditHours", creditHours);
                command.Parameters.AddWithValue("@prereqId", prereqId);
                command.Parameters.AddWithValue("@cCoordinator", cCoordinator);
                command.Parameters.AddWithValue("@lCoordinator", lCoordinator);

                command.ExecuteNonQuery();

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