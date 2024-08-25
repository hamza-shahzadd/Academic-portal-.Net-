using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manageAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AddS_Click(object sender, EventArgs e)
    {
         Response.Redirect("Student_signup.aspx");
    }
    protected void AddF_Click(object sender, EventArgs e)
    {
        Response.Redirect("Faculty_signup.aspx");
    }
    protected void DeleteS_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete_Student.aspx");
    }
    protected void DeleteF_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete_Faculty.aspx");
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("academicsHome.aspx");
    }
}