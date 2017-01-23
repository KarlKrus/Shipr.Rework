using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipr.Rework.Shipr.Project.controls
{
    public partial class PromoType : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlIncreaseBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlIncreaseBox.SelectedIndex == 0)
            {
                lblInptGrpDollarPercent.Text = "%"; txtIncreaseDollar.Visible = false; txtIncreasePercent.Visible = true; txtIncreaseDollar.Text = "0";
            }
            else
            {
                lblInptGrpDollarPercent.Text = "$"; txtIncreaseDollar.Visible = true; txtIncreasePercent.Visible = false; txtIncreasePercent.Text = "0";
            }
        }
    }
}