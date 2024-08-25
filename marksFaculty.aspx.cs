using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class marksFaculty : System.Web.UI.Page
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
}