using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Configuration;

namespace SportSiteDAL
{
    public class Users
    {

        SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
        DataTable _table = new DataTable(); 
           
        public bool ValidateUser(string username, string password)
        {

            bool _result = false;
            string sqlQuery = "select * from Users where username ='" + username  +"' and password='" + password +"'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            DataSet dtResult = new DataSet();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = cmd;
            dap.Fill(dtResult);
            if (_table.Rows.Count > 0)
            {
                _result = true;
            }
            return _result;
        }

    }
}
