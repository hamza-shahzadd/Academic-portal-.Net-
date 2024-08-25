using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class facultyHome : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
    }
    protected void course_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewCoursesAssigned.aspx?id="+id);
    }
    protected void marks_Click(object sender, EventArgs e)
    {
        Response.Redirect("marksFaculty.aspx?id="+id);
    }
    protected void attendence_Click(object sender, EventArgs e)
    {
        Response.Redirect("attendence.aspx?id="+id);
    }
    protected void evaluation_Click(object sender, EventArgs e)
    {
        Response.Redirect("MarksEvaluation.aspx?id="+id);
    }
    protected void grade_Click(object sender, EventArgs e)
    {
        Response.Redirect("Grade.aspx?id="+id);
    }
    protected void feedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewFeedback.aspx?id="+id);
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

}