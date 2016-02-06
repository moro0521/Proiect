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
        public void OkayUtilizator(String Nume, String Prenume, String Statut, String AdresaEmail, String Parola)
        {
            SqlParameter[] param;
            SqlParameter par1 = new SqlParameter("@Nume", Nume);
            SqlParameter par2 = new SqlParameter("@Prenume", Prenume);
            SqlParameter par3 = new SqlParameter("@Statut", Statut);
            SqlParameter par4 = new SqlParameter("@adresaEmail", AdresaEmail);
            SqlParameter par5 = new SqlParameter("@parola", Parola);
            param = new SqlParameter[] { par1, par2, par3, par4, par5 };
            string cmd = @"INSERT INTO UTILIZATORI(Nume,Prenume,Statut,AdresaDeEmail,Password) VALUES (@Nume,@Prenume,@Statut,@adresaEmail,@parola);";
            conexiune.executeInsertQuery(cmd, param);

        }
        public void OkayRemove(String NumeR, String PrenumeR, String StatutR, String AdrEmailR, String PasswdR)
        {
            SqlParameter[] param;
            SqlParameter par1 = new SqlParameter("@NumeR", NumeR);
            SqlParameter par2 = new SqlParameter("@PrenumeR", PrenumeR);
            SqlParameter par3 = new SqlParameter("@StatutR", StatutR);
            SqlParameter par4 = new SqlParameter("@AdrEmailR", AdrEmailR);
            SqlParameter par5 = new SqlParameter("@PasswdR", PasswdR);
            param = new SqlParameter[] { par1, par2, par3, par4, par5 };
            string cmd = @"DELETE FROM UTILIZATORI(Nume,Prenume,Statut,AdresaDeEmail,Password) VALUES (@NumeR,@PrenumeR,@StatutR,@AdrEmailR,@PasswdR);";
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
        public void OkayAccidentari(String id, String idCompetitieA, String IdUtilizatorA, String TipulAccidentului)
        {
            SqlParameter[] param;
            SqlParameter par1 = new SqlParameter("@id", id);
            SqlParameter par2 = new SqlParameter("@idCompetitieA", idCompetitieA);
            SqlParameter par3 = new SqlParameter("@IdUtilizatorA", IdUtilizatorA);
            SqlParameter par4 = new SqlParameter("@TipulAccidentului", TipulAccidentului);

            param = new SqlParameter[] { par1, par2, par3, par4 };
            string cmd=@"INSERT INTO ACCIDENTARI(id,idCompetitie,idUtilizator,TipulAccidentului) VALUES(@id,@idCompetitieA,@IdUtilizatorA,@TipulAccidentului)";
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
        public void inscriereUtilizatorCompetitie(string Utilizator,string Competitie,string DataCompetitie)
        {
            SqlParameter[] param = new SqlParameter[0];
            string cmd=@"select id FROM Utilizatori WHERE AdresaDeEmail='"+ Utilizator+"'";
            DataTable tab = new DataTable();
            tab = conexiune.executeSelectQuery(cmd, param);
            int idUtilizator = int.Parse(tab.Rows[0][0].ToString());
            cmd = @"select idCompetitie FROM Competitie WHERE NumeCompetitie = '" + Competitie + "' " + "AND DataCompetitie = '" + DataCompetitie + "'";
            tab = conexiune.executeSelectQuery(cmd, param);
            int idCompetitie = int.Parse(tab.Rows[0][0].ToString());
            SqlParameter[] parametri;
            SqlParameter param1 = new SqlParameter("@idCompetitie", idCompetitie);
            SqlParameter param2 = new SqlParameter("@dataCompetitie", DataCompetitie);
            SqlParameter param3 = new SqlParameter("@idUtilizator", idUtilizator);
            SqlParameter param4 = new SqlParameter("@Status", "In asteptare");
            parametri = new SqlParameter[] { param1, param2, param3, param4 };
            cmd = @"INSERT INTO TabelaInscrieri(idCompetitie,DataInscriere,idUtilizator,Status) VALUES (@idCompetitie,@dataCompetitie,@idUtilizator,@Status)";
            conexiune.executeInsertQuery(cmd, parametri);
        }
    }
}