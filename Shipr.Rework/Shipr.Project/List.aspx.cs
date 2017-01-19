using ShipR.Business;
using System;
using System.Collections.Generic;
using System.Data;
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

        protected void grdvwPromos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataTable dataTable = PromoManagement.GetActivePromos().Tables[0];
            if (dataTable != null)
                grdvwPromos.DataSource = dataTable;
            grdvwPromos.PageIndex = e.NewPageIndex;
            grdvwPromos.DataBind();
        }
    }
}