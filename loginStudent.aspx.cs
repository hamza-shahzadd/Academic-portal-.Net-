using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class loginStudent : System.Web.UI.Page
{

    public string id = "";  
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        string email = Request.Form["email"]; // email
        string password = Request.Form["password"];

        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();

        string query = "SELECT COUNT(*) FROM Student WHERE Semail=@Email AND Spassword=@Password";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@Email", email);
        cmd.Parameters.AddWithValue("@Password", password);
        int count = (int)cmd.ExecuteScalar();
        if (count > 0)
        {
            string query2 = "select rollnumber from Student where Semail = @Email ";
            SqlCommand cmd2 = new SqlCommand(query2, conn);
            cmd2.Parameters.AddWithValue("@Email", email);
            id = cmd2.ExecuteScalar().ToString();


            // successful login
            conn.Close();
            Response.Redirect("studentHome.aspx?id="+ id);
        }
        else
        {
            // unsuccessful login
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid email or password');", true);
        }
    }


}