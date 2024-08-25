using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class academicsHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
         Response.Redirect("home.aspx");
    }
    protected void accounts_Click(object sender, EventArgs e)
    {
        Response.Redirect("manageAccount.aspx");

    }
    protected void sections_Click(object sender, EventArgs e)
    {
        Response.Redirect("AcademicAddCourses.aspx");
    }
    
    protected void allocate_Click(object sender, EventArgs e)
    {
        Response.Redirect("CourseAllocationHome.aspx");
    }
    


    protected void register_Click(object sender, EventArgs e)
    {
        Response.Redirect("AllocateSections.aspx");
    }
}