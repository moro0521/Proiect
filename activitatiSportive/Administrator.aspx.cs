using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace activitatiSportive
{
    public partial class Administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Button3.Visible = Button4.Visible = Button5.Visible = Button6.Visible = Button7.Visible = Button8.Visible = false;
            TextBox1.Visible  = false;
            TextBox2.Visible = TextBox3.Visible = TextBox4.Visible = TextBox5.Visible = TextBox6.Visible = TextBox7.Visible = true;
            Label1.Visible = false;
            Label2.Visible = Label3.Visible = Label4.Visible = Label5.Visible = Label6.Visible = Label7.Visible = true; 
            Label2.Text = "ID Student";
            BussinesLayes bll = new BussinesLayes();
            bll.TabelSelect("StudentiParticipanti", GridView1);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Button3.Visible = true;
            Button2.Visible = Button4.Visible = Button5.Visible = Button6.Visible = Button7.Visible = Button8.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BussinesLayes bll = new BussinesLayes();
            bll.InsertInStdPart(TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox4.Text, TextBox6.Text, TextBox7.Text);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("StartPage.aspx");
        }
    }
}