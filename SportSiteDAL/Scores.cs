using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Configuration;


namespace SportSiteDAL
{


    public class Scores
    {


        SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
        DataTable _table = new DataTable();


        public DataTable GetCurrentMatches()
        {

            string sqlQuery = "SELECT " +
                              " [MatchID] " +
                              ", 'Matchdetails.aspx?id=' +  CONVERT(VARCHAR(19),[MatchID]) as MatchURL" +
                             " ,[Team1Score] " +
                             " ,[Team2Score] " +
                             " ,(SELECT Teams.Name FROM Teams WHERE Teams.Id = m.Team1) as Team1Name " +
                             " ,(SELECT Teams.Name FROM Teams WHERE Teams.Id = m.Team2) as Team2Name " +
                             " ,m.GameID " +
                             " ,m.MatchDate " +
                              ",(case When Team1Score = Team2Score Then 'Draw' "+
      " When Team1Score > Team2Score Then( SELECT Teams.Name FROM Teams WHERE Teams.Id = m.Team1)  " +
	  " Else (SELECT Teams.Name FROM Teams WHERE Teams.Id = m.Team2) END) as Winner" +  
                              " FROM [Scores] s  " +
                              " join Matches m on  m.Id  = s.MatchID ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            DataSet dtResult = new DataSet();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = cmd;
            dap.Fill(_table);

            return _table;
        }


    }
}
