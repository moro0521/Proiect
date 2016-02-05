using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace activitatiSportive
{
    public class BussinesLayer
    {
        dbConnection conexiune = new dbConnection();
        public void InsertInStdPart( string s1, string s2, string s3, string s4,string s5, string s6)
        {

            SqlParameter[] param;
            SqlParameter par1 = new SqlParameter("@nume", s1);
            SqlParameter par2 = new SqlParameter("@prenume", s2);
            SqlParameter par3 = new SqlParameter("@academie", s3);
            SqlParameter par4 = new SqlParameter("@an", s4);
            SqlParameter par5 = new SqlParameter("@spec", s5);
            SqlParameter par6 = new SqlParameter("@gre", s6);
            param = new SqlParameter[] { par1,par2,par3,par4,par5,par6};
            string cmd = @"INSERT INTO StudentiParticipanti(Nume, Prenume, Academie, An_Studiu, Specializarea, Greutatea ) VALUES (@nume, @prenume, @academie, @an, @spec, @gre)";
            conexiune.executeInsertQuery(cmd, param);
        }
        public void OkayUtilizator(String Nume,String Prenume,String Statut, String AdresaEmail, String Parola)
        {
            SqlParameter[] param;
            SqlParameter par1 = new SqlParameter("@Nume", Nume);
            SqlParameter par2 = new SqlParameter("@Prenume", Prenume);
            SqlParameter par3 = new SqlParameter("@Statut", Statut);
            SqlParameter par4 = new SqlParameter("@adresaEmail", AdresaEmail);
            SqlParameter par5 = new SqlParameter("@parola",Parola);
            param = new SqlParameter[] { par1, par2, par3, par4, par5 };
            string cmd = @"INSERT INTO UTILIZATORI(Nume,Prenume,Statut,AdresaDeEmail,Password) VALUES (@Nume,@Prenume,@Statut,@adresaEmail,@parola);";
            conexiune.executeInsertQuery(cmd, param);

        }
        public void OkayCompetitie(String NumeCompetitie, String DataCompetitie, String Locatie, String StatutCompetitie)
        {
            SqlParameter[] param;
            SqlParameter par1 = new SqlParameter("@NumeCompetitie", NumeCompetitie);
            SqlParameter par2 = new SqlParameter("@DataCompetitie", DataCompetitie);
            SqlParameter par3 = new SqlParameter("@Locatie", Locatie);
            SqlParameter par4 = new SqlParameter("@StatutCompetitie", StatutCompetitie);
            
            param = new SqlParameter[] { par1, par2, par3, par4 };
            string cmd = @"INSERT INTO COMPETITIE(NumeCompetitie,DataCompetitie,Locatie,StatutCompetitie) VALUES (@NumeCompetitie,@DataCompetitie,@Locatie,@StatutCompetitie)";
            conexiune.executeInsertQuery(cmd, param);
        }
        public int LogareLaBazaDeDate(string adresaEmail,string parola,Label vUsername,Label vPassword)
        {
            SqlParameter[] param = new SqlParameter[0];
            string cmd = @"select * FROM Utilizatori where AdresaDeEmail='" + adresaEmail+"'";
            DataTable tab = new DataTable();
            tab = conexiune.executeSelectQuery(cmd,param); // intoarce un data table
            DataRowCollection drc = tab.Rows;
            if (drc.Count > 0)
            {
                DataRow dr = drc[0];
                if (dr["AdresaDeEmail"].ToString().Trim() != adresaEmail)
                {
                    vUsername.Visible = true;
                }
                else
                {   
                    if(dr["Password"].ToString().Trim() != parola)
                    {
                        vPassword.Visible=true;
                    }
                    else
                    {
                        return int.Parse(dr["Statut"].ToString());
                    }
                }
                string cmd2 = @"select * FROM Utilizatori where ='";
            }
            else
            {
                vUsername.Visible = true;
            }
            return 0;
            
        }
        public void afisareSportivi(GridView afisare1, GridView afisare2)
        {
            SqlParameter[] param = new SqlParameter[0];
            string cmd = @"select IdCompetitie,NumeCompetitie,DataCompetitie,Locatie FROM Competitie WHERE Status = 'Activa'";
            afisare1.DataSource = conexiune.executeSelectQuery(cmd, param);
            afisare1.DataBind();
            cmd = @"select NumeCompetitie,DataCompetitie,Locatie FROM Competitie WHERE Status = 'Inactiva'";
            afisare2.DataSource = conexiune.executeSelectQuery(cmd, param);
            afisare2.DataBind();
        }
        public void inscriereUtilizatorCompetitie(String Utilizator,String Competitie,String DataCompetitie)
        { 
            
        }
    }
}