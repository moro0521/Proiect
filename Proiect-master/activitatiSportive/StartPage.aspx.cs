using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace activitatiSportive
{
    public partial class StartPage : System.Web.UI.Page
    {
        protected static bool logat = false;
        protected BussinesLayer bus;
        protected void Page_Load(object sender, EventArgs e)
        {
            bus = new BussinesLayer();
            bus.afisareSportivi(GridView1, GridView2);
            UserName.Attributes.Add("onclick", "setUserNameToNothing()");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrator.aspx");
        }

        protected void Logare(object sender, EventArgs e)
        {
           
            bus = new BussinesLayer();
            if (bus.LogareLaBazaDeDate(UserName.Text, Password.Text, userValidation, passwordValidation) == 1)
            {
                Response.Redirect("Administrator.aspx");
            }
            else if (bus.LogareLaBazaDeDate(UserName.Text, Password.Text, userValidation, passwordValidation) == 2)
            {
                logat = true;
                Label1.Visible = false;
                Label2.Visible = false;
                Password.Visible = false;
                UserName.Visible = false;
                userValidation.Visible = false;
                passwordValidation.Visible = false;
                Button2.Visible = false;
                MesajLogare.Visible = false;

            }


        }

        protected void Gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "inscriereCompetitie")
            {
                string numeCompetitie = e.CommandArgument.ToString();
                // do you what you need to do
                if (logat == false)
                {
                    MesajLogare.Visible = true;
                }
                else
                {
                    String textul; 
                    for(int i = 0; i < GridView1.Rows.Count ; i++) {
                        for (int j = 0; j < GridView1.Rows[i].Cells.Count; j++)
                        {
                            LinkButton butonul = (LinkButton)GridView1.Rows[i].Cells[j].FindControl("numeCompetitie");
                            textul = butonul.Text;
                            if (GridView1.Rows[i].Cells[0].Text == numeCompetitie)
                            {
                                TextBox1.Text = GridView1.Rows[i].Cells[0].Text;
                            }
                        }
                    }
                   // bus.inscriereUtilizatorCompetitie(UserName.Text,numeCompetitie,
                }
            }
        }
    }
}