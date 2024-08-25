using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


   
public partial class CoursesOffered : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        string query = "SELECT courseId as Course_Codes, courseName as Courses, creditHours as Credits FROM courses";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();

            adapter.Fill(dataSet);
            GridView1.DataSource = dataSet.Tables[0];
            GridView1.DataBind();
        }
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("studentHome.aspx?id=" + id);
    }

}

