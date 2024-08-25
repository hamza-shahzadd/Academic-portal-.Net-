using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewAttendence : System.Web.UI.Page
{
    public string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
        string connectionString = "Data Source=HAMZA\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        string query = "select Attendence.dateA, Attendence.Description from Attendence where Attendence.rollnumber= @id;"; // Use parameterized query

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id); // Add the id parameter and its value

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