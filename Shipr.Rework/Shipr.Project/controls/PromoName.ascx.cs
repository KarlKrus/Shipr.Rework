using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipr.Rework.Shipr.Project.controls
{
    public partial class PromoName : System.Web.UI.UserControl
    {
        public string Text { get; set; }
        public string Value { get; set; }
        public string Title { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ltrlTitle.Text = (Title != null) ? Title : "Name:";
            txtbxPromoName.Visible = true;
            plchldrPromoName.Visible = true;
            if (Value != null && Value.Length > 0)
                txtbxPromoName.Text = Value;
            else
                Value = txtbxPromoName.Text;

            lblPromoName.Text = "Promo Name:";
        }
    }
}