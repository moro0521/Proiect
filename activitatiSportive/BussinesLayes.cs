using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace activitatiSportive
{
    public class BussinesLayes
    {
        dbConnection conexiune = new dbConnection();
        public void TabelSelect(string Table,GridView afisare)
        {
            SqlParameter[] param = new SqlParameter[0];
            string cmd = @"select * FROM " + Table;
            afisare.DataSource = conexiune.executeSelectQuery(cmd, param);
            afisare.DataBind();
        }
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

    }
}