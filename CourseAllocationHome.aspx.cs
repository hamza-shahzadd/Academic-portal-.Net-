using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourseAllocationHomeaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void coursefaculty_Click(object sender, EventArgs e)
    {
        Response.Redirect("CourseAlloc_Cinstr.aspx");
    }
    protected void labfaculty_Click(object sender, EventArgs e)
    {
        Response.Redirect("CourseAlloc_Linstr.aspx");
    }
}