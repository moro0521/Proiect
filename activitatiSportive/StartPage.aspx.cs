using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace activitatiSportive
{
    public partial class StartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader reader;
            SqlConnection conn = new SqlConnection("Data Source=ARKWRIGHT-PC;Initial Catalog=ActivitatiSportive;Integrated Security=True");
            conn.Open();
            string query = "SELECT * FROM StudentiParticipanti";
            SqlCommand cmd = new SqlCommand(query, conn);
            reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
        }
    }
}