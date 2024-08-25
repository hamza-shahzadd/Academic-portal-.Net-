using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void student_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginStudent.aspx");
    }

    protected void faculty_Click(object sender, EventArgs e)
    {
        // Handle the click event for the faculty button
        // You can add your code here to redirect the user to the faculty login page or perform any other action
        Response.Redirect("Faculty_login.aspx");
    }

    protected void academic_Click(object sender, EventArgs e)
    {
        // Handle the click event for the academic officer button
        // You can add your code here to redirect the user to the academic officer login page or perform any other action
        Response.Redirect("academicslogin.aspx");
    }
}