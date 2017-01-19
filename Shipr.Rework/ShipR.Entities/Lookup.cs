using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Web;
using System.Web.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace ShipR.Entities
{
	public class Lookup
	{    
        public List<Store> Stores { get; set; }
        public List<PromoType> PromoTypes { get; set; }
        public List<DiscountType> DiscountTypes { get; set; }
        public List<Shipping> Shippings { get; set; }
        

		public Lookup()
		{
            //no logic
		}
        

		public string GetPromoTypeById(int promoTypeId)
		{
            PromoType promoType = PromoTypes.Find(delegate(PromoType p) { return p.PromoTypeID == promoTypeId; });
            return (promoType!=null?promoType.PromoTypeDesc:"");
		}


		public string GetDiscountTypeById(int discountTypeId)
		{
            DiscountType discountType = DiscountTypes.Find(delegate(DiscountType p) { return p.DiscountTypeID == discountTypeId; });
            if (discountType == null)
                return "-";
            else
                return discountType.DiscountTypeDesc;
		}

		public string GetShipMethodByCode(int code)
		{
            Shipping shipping = Shippings.Find(delegate(Shipping p) { return p.Code == code; });
            return shipping.Display;
		}
	}
}
