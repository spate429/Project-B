using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportSiteBAL;
using System.Data;

namespace SportSite
{
    public partial class Matchdetails : Page
    {
        ScoresBAL _scores = new ScoresBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var data = _scores.GetScores().Select("MatchID=" + Convert.ToString(Request.QueryString["id"])).CopyToDataTable();
                
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }
    }
}