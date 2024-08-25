using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_login : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        conn.Open();
        string rollNumber = Request.Form["id"];
        string password = Request.Form["password"];

        SqlCommand cmd;
        string tableName;

        if (rollNumber.StartsWith("C"))
        {
            tableName = "CourseInstructors";
            cmd = new SqlCommand("SELECT COUNT(*) FROM  CourseInstructors WHERE CinstructorId=@RollNo AND Cpassword=@Password", conn);
        }
        else if (rollNumber.StartsWith("L"))
        {
            tableName = "Labinstructors";
            cmd = new SqlCommand("SELECT COUNT(*) FROM Labinstructors WHERE LinstructorId=@RollNo AND Lapassword=@Password", conn);
        }
        else
        {
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid roll number format');", true);
            return;
        }

        cmd.Parameters.AddWithValue("@RollNo", rollNumber);
        cmd.Parameters.AddWithValue("@Password", password);
        int count = (int)cmd.ExecuteScalar();
        if (count > 0)
        {
            id = rollNumber;
          
            // successful login
            conn.Close();
            Response.Redirect("facultyHome.aspx?id="+id);
            
        }
        else
        {
            // unsuccessful login
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid roll number or password');", true);
        }
    }

}