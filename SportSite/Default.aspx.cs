using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;
using SportSiteBAL;

namespace SportSite
{
    public partial class _Default : Page
    {

        ScoresBAL _scores = new ScoresBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var data = _scores.GetScores();
                DetailsView1.DataSource = data;
                DetailsView1.DataBind();
            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            DetailsView1.PageIndex = e.NewPageIndex;
            DetailsView1.DataSource = _scores.GetScores();
            DetailsView1.DataBind();
        }
 
    }
}