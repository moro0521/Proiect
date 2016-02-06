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
        BussinesLayer bs = new BussinesLayer();
        BussinesLayer bs2 = new BussinesLayer();
        BussinesLayer bs3 = new BussinesLayer();
        BussinesLayer bs4 = new BussinesLayer();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //{
            //    Button2.Visible = true;
            //    Button3.Visible = Button4.Visible = Button5.Visible = Button6.Visible = Button7.Visible = Button8.Visible = false;
            //    TextBox1.Visible  = false;
            //    TextBox2.Visible = TextBox3.Visible = TextBox4.Visible = TextBox5.Visible = TextBox6.Visible = TextBox7.Visible = true;
            //    Label1.Visible = false;
            //    Label2.Visible = Label3.Visible = Label4.Visible = Label5.Visible = Label6.Visible = Label7.Visible = true; 
            //    Label2.Text = "ID Student";
            //  //  BussinesLayer bll = new BussinesLayer();
            // //   bll.TabelSelect("StudentiParticipanti", GridView1);
        }

        protected void InsUtz(object sender, EventArgs e)
        {
            Nume.Visible = true;
            Prenume.Visible = true;
            Statut.Visible = true;
            AdrEmail.Visible = true;
            Passwd.Visible = true;
            
            OkayUtilizator.Visible = true;
        
        }

        protected void OkayUtilizator_Click(object sender, EventArgs e)
        {
           
            bs.OkayUtilizator(Nume.Text, Prenume.Text, Statut.Text, AdrEmail.Text, Passwd.Text);
        }

        
        protected void Button3_Click(object sender, EventArgs e)
        {
            NumeCompetitie.Visible = true;
            DataCompetitie.Visible = true;
            Locatie.Visible = true;
            StatutCompetitie.Visible = true;
            
            OkayCompetitie.Visible = true;
        }

        protected void OkayCompetitie_Click(object sender, EventArgs e)
        {
            bs2.OkayCompetitie(NumeCompetitie.Text, DataCompetitie.Text, Locatie.Text, StatutCompetitie.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            id.Visible = true;
            idCompetitieA.Visible = true;
            IdUtilizatorA.Visible = true;
            TipulAccidentului.Visible = true;

            OkayAccidentari.Visible = true;
        }

        protected void OkayAccidentari_Click(object sender, EventArgs e)
        {
            bs3.OkayAccidentari(id.Text, idCompetitieA.Text, IdUtilizatorA.Text, TipulAccidentului.Text);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            NumeR.Visible = true;
            PrenumeR.Visible = true;
            StatutR.Visible = true;
            AdrEmailR.Visible = true;
            PasswdR.Visible = true;
            OkayRemove.Visible = true;
        }

        protected void OkayRemove_Click(object sender, EventArgs e)
        {
            bs4.OkayRemove(NumeR.Text, PrenumeR.Text, StatutR.Text, AdrEmailR.Text, PasswdR.Text);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("StartPage.aspx");
        }


        
       

      

      


    }
}
