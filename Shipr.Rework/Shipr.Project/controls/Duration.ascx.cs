using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipr.Rework.Shipr.Project.controls
{
    public partial class Duration : System.Web.UI.UserControl
    {
        public String StartDate { get; set; }
        public String EndDate { get; set; }
        public String StartTime { get; set; }
        public String EndTime { get; set; }
        public string Title { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ltrlTitle.Text = (Title != null) ? Title : "Duration";

            if (StartDate != null && StartDate.Trim().Length > 0)
                txtStartDate.Text = StartDate;
            else
                StartDate = txtStartDate.Text;

            if (EndDate != null && EndDate.Trim().Length > 0)
                txtEndDate.Text = EndDate;
            else
                EndDate = txtEndDate.Text;


            if (StartTime != null && StartTime.Trim().Length > 0)
                ddlStartTime.SelectedIndex = getSelectedIndex(ddlStartTime, StartTime);
            else
                StartTime = ddlStartTime.SelectedItem.Text;

            if (EndTime != null && EndTime.Trim().Length > 0)
                ddlEndTime.SelectedIndex = getSelectedIndex(ddlEndTime, EndTime);
            else
                EndTime = ddlEndTime.SelectedItem.Text;

        }

        private int getSelectedIndex(DropDownList ddl, String value)
        {
            for (int i = 0; i < ddl.Items.Count; i++)
            {
                if (ddl.Items[i].ToString().Equals(value.PadLeft(8, '0')))
                {
                    return i;
                    break;
                }
            }
            return 0;
        }
    }
}