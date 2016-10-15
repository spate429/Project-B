using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SportSiteDAL;
using System.Data;
namespace SportSiteBAL
{
  public class ScoresBAL
    {

      Scores _scores = new Scores();

      public DataTable GetScores()
      {
        return   _scores.GetCurrentMatches(); 
      }

    }
}
