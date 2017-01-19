using ShipR.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipr.Rework.Shipr.Project
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grdvwPromos.DataSource = PromoManagement.GetActivePromos().Tables[0];
                grdvwPromos.DataBind();
            }
        }
    }
}