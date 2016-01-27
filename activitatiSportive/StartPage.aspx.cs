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
            BussinesLayes bus = new BussinesLayes();
            bus.TabelSelect("StudentiParticipanti",GridView1);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrator.aspx");
        }
    }
}