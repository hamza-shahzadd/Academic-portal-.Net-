using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class studentHome : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void marks_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewMarks.aspx?id=" + id);

    }
    protected void attendence_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewAttendence.aspx?id=" + id);
    }

    protected void transcript_Click(object sender, EventArgs e)
    {
        Response.Redirect("Transcript.aspx?id=" + id);
    }



    protected void instructors_Click(object sender, EventArgs e)
    {
        Response.Redirect("CourseAllocationList.aspx?id="+ id);
    }

    protected void Ocourses_Click(object sender, EventArgs e)
    {
        Response.Redirect("CoursesOffered.aspx?id=" + id);
    }
    protected void feedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("TeacherAssessment.aspx?id=" + id);

    }
    protected void Registered_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisteredCourses.aspx?id=" + id);
    }

    protected void CGPA_Click(object sender, EventArgs e)
    {
        Response.Redirect("CgpaGraphs.aspx?id="+id);
    }



    
}