﻿using ShipR.Business;
using ShipR.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shipr.Rework.Shipr.Project
{
    public partial class Setup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lookup lookup;
            Promo promo;
            if (!IsPostBack)
            {
                lookup = PromoManagement.GetGenericLookUp();
                uiStoreSelect.Source = lookup.Stores;
                uiShipMethod.Source = lookup.Shippings;
                uiPromoType.SourceDiscountType = lookup.DiscountTypes;
            }
        }
    }
}