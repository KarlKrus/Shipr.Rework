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
        public List<ShipR.Entities.PromoType> SourcePromoType { get; set; }
        public List<ShipR.Entities.DiscountType> SourceDiscountType { get; set; }
        public int PromoTypeID { get; set; }
        public string Text { get; set; }
        public string DollarMin { get; set; }
        public string DollarMax { get; set; }
        public string WeightMin { get; set; }
        public string WeightMax { get; set; }
        public string ExcludedSkus { get; set; } //CRF48287 Gilbert -  exclude feature. 7/8/2014
        public string Qualifiers { get; set; }
        public string Title { get; set; }
        public Boolean isIncreasePercent { get; set; }
        public string IncreasePercent { get; set; }
        public string IncreaseDollar { get; set; }
        public string IncreaseWeightThreshold { get; set; }
        public string IncreaseDollarThreshold { get; set; }
        public string CategoryCodes { get; set; }
        public string Manufacturers { get; set; }
        public string PaymentMethods { get; set; }
        public double DiscountValue { get; set; }
        public double IncreaseFreight { get; set; }
        public bool FullOrderOrExactPromo { get; set; }
        public int DiscountTypeID { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            loadReference();
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

        #region loadReference
        private void loadReference()
        {
            //if (SourcePromoType != null)
            //{
            //    uxType.DataSource = SourcePromoType;
            //    uxType.DataValueField = "PromoTypeID";
            //    uxType.DataTextField = "PromoTypeDesc";
            //    uxType.DataBind();
            //}

            if (SourceDiscountType != null)
            {
                ShipR.Entities.DiscountType dt = new ShipR.Entities.DiscountType();
                dt.DiscountTypeID = 0;
                dt.DiscountTypeDesc = "-";
                dt.DetailedDesc = "-";
                SourceDiscountType.Insert(0, dt);
                ddlDiscountType.DataSource = SourceDiscountType;
                ddlDiscountType.DataValueField = "DiscountTypeID";
                ddlDiscountType.DataTextField = "DiscountTypeDesc";
                pnlDiscountType.DataBind();
                if (DiscountTypeID <= 0)
                    ddlDiscountType.SelectedIndex = 2;
                else
                    ddlDiscountType.SelectedIndex = DiscountTypeID;

            }
        }
        #endregion

        protected void ddlDiscountType_SelectedIndexChanged(object sender, EventArgs e)
        {
            DiscountTypeID = Convert.ToInt32(ddlDiscountType.SelectedValue);
            if (ddlDiscountType.SelectedIndex == 0 || ddlDiscountType.SelectedIndex == 1 || ddlDiscountType.SelectedIndex == 5) //1:Free and 0:no selected , 5: None
            {
                lblDiscountValue.Visible = false; ltlReqSign.Visible = false;
                txtDiscountValue.Visible = false; lblInptGrpDiscountValue.Visible = false;
            }
            else
            {
                if (ddlDiscountType.SelectedIndex == 4) //exact dollar charge
                {
                    lblDiscountValue.Text = "Shipping Charge:"; lblInptGrpDiscountValue.Text = "$";
                }
                else if (ddlDiscountType.SelectedIndex == 3) //percent discount
                {
                    lblDiscountValue.Text = "Percent Value:"; lblInptGrpDiscountValue.Text = "%";
                }
                else if (ddlDiscountType.SelectedIndex == 2)
                {
                    lblDiscountValue.Text = "Discount Value:"; lblInptGrpDiscountValue.Text = "$";
                }

                lblDiscountValue.Visible = true;
                txtDiscountValue.Visible = true;
                ltlReqSign.Visible = true;
                lblInptGrpDiscountValue.Visible = true;
            }
        }
    }
}