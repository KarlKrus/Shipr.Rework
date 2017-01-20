using ShipR.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipr.Rework.Shipr.Project.controls
{
    public partial class ShipMethodSelector : System.Web.UI.UserControl
    {
        public List<Shipping> Source { get; set; }
        public Shipping SelectedShipping { get; set; }
        public List<KeyValuePair<string, string>> Items { get; set; }
        public string Title { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ddlShipMethod.DataSource = Source;
            ddlShipMethod.DataValueField = "Code";
            ddlShipMethod.DataTextField = "Display";
            ddlShipMethod.DataBind();
            Items = GetSelectedItems();
            ltrlTitle.Text = (Title != null) ? Title : "Shipping method";

            if (SelectedShipping != null)
            {
                ddlShipMethod.SelectedValue = Convert.ToString(SelectedShipping.Code);
            }
        }

        private List<KeyValuePair<string, string>> GetSelectedItems()
        {
            List<KeyValuePair<string, string>> list = new List<KeyValuePair<string, string>>();
            foreach (ListItem i in ddlShipMethod.Items)
            {
                if (i.Selected)
                {
                    list.Add(new KeyValuePair<string, string>(i.Value, i.Text));
                }
            }
            return list;
        }
    }
}