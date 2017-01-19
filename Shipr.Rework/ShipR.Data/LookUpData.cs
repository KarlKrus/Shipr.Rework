using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using ShipR.Entities;

namespace ShipR.Data
{
    public class LookUpData
    {
        #region Enumerations
        enum StoredProcedures
        {          
            usp_shp_getAllLookupTables
        };

        enum Parameters
        {
            PromoID,
	    };
                
        public enum Fields
        {      
            PromoID,
            store_ref,
            store,
            PromoTypeID,
            PromoTypeDesc,
            DiscountTypeID,
            DiscountTypeDesc,
            DetailedDesc,
            Code,
            Type,
            Delivery,
            Display,
            Notes1,
            Notes2,
        };
        #endregion
           
        
        public static Lookup GetGenericLookUp()
        {      
             Database db = DatabaseFactory.CreateDatabase("Rap");
             DbCommand command = db.GetStoredProcCommand(StoredProcedures.usp_shp_getAllLookupTables.ToString());
             Lookup lookup=new Lookup();
             lookup.Stores = ReturnStoreCollection(db.ExecuteReader(command));
             lookup.PromoTypes = ReturnPromotypeCollection(db.ExecuteReader(command));
             lookup.DiscountTypes = ReturnDiscountTypeCollection(db.ExecuteReader(command));
             lookup.Shippings = ReturnShippingCollection(db.ExecuteReader(command));
             return lookup;
        }
        
        #region Store
        private static List<Store> ReturnStoreCollection(IDataReader idr)
        {
            List<Store> piList = new List<Store>();
            if (idr != null)
            {
                while (idr.Read())
                    piList.Add(ReturnStoreFromRecord(idr));
                idr.Close();
                idr.Dispose();
            }
            return piList;
        }

        private static Store ReturnStoresFromReader(IDataReader idr)
        {
            Store sp = null;
            if (idr != null)
            {
                if (idr.Read())
                    sp = ReturnStoreFromRecord(idr);
                idr.Close();
                idr.Dispose();
            }
            return sp;
        }

        internal static Store ReturnStoreFromRecord(IDataRecord idr)
        {
            Store p = new Store();
            p.StoreID = DataHelper.ConvertToInt(idr[Fields.store_ref.ToString()]);
            p.StoreName = DataHelper.ConvertToString(idr[Fields.store.ToString()]);
            return p;
        }
        #endregion

        #region Promotype
        private static List<PromoType> ReturnPromotypeCollection(IDataReader idr)
        {
            idr.NextResult();
            List<PromoType> piList = new List<PromoType>();
            if (idr != null)
            {
                while (idr.Read())
                    piList.Add(ReturnPromoTypeFromRecord(idr));
                idr.Close();
                idr.Dispose();
            }
            return piList;
        }

        private static PromoType ReturnPromoTypeFromReader(IDataReader idr)
        {
            PromoType sp = null;
            if (idr != null)
            {
                if (idr.Read())
                    sp = ReturnPromoTypeFromRecord(idr);
                idr.Close();
                idr.Dispose();
            }
            return sp;
        }

        internal static PromoType ReturnPromoTypeFromRecord(IDataRecord idr)
        {
            PromoType p = new PromoType();
            p.PromoTypeID = DataHelper.ConvertToInt(idr[Fields.PromoTypeID.ToString()]);
            p.PromoTypeDesc = DataHelper.ConvertToString(idr[Fields.PromoTypeDesc.ToString()]);
            return p;
        }
        #endregion

        #region DiscountType
        private static List<DiscountType> ReturnDiscountTypeCollection(IDataReader idr)
        {
            idr.NextResult();
            idr.NextResult();
            List<DiscountType> piList = new List<DiscountType>();
            if (idr != null)
            {
                while (idr.Read())
                    piList.Add(ReturnDiscountTypeFromRecord(idr));
                idr.Close();
                idr.Dispose();
            }
            return piList;
        }

        private static DiscountType ReturnDiscountTypeFromReader(IDataReader idr)
        {
            DiscountType sp = null;
            if (idr != null)
            {
                if (idr.Read())
                    sp = ReturnDiscountTypeFromRecord(idr);
                idr.Close();
                idr.Dispose();
            }
            return sp;
        }

        internal static DiscountType ReturnDiscountTypeFromRecord(IDataRecord idr)
        {
            DiscountType p = new DiscountType();
            p.DiscountTypeID = DataHelper.ConvertToInt(idr[Fields.DiscountTypeID.ToString()]);
            p.DiscountTypeDesc = DataHelper.ConvertToString(idr[Fields.DiscountTypeDesc.ToString()]);
            p.DetailedDesc = DataHelper.ConvertToString(idr[Fields.DetailedDesc.ToString()]);
            return p;
        }
        #endregion

        #region Shipping
        private static List<Shipping> ReturnShippingCollection(IDataReader idr)
        {
            idr.NextResult();
            idr.NextResult();
            idr.NextResult();
            List<Shipping> piList = new List<Shipping>();
            if (idr != null)
            {
                while (idr.Read())
                    piList.Add(ReturnShippingFromRecord(idr));
                idr.Close();
                idr.Dispose();
            }
            return piList;
        }

        private static Shipping ReturnShippingFromReader(IDataReader idr)
        {
        
            Shipping sp = null;
            if (idr != null)
            {
                if (idr.Read())
                    sp = ReturnShippingFromRecord(idr);
                idr.Close();
                idr.Dispose();
            }
            return sp;
        }

        internal static Shipping ReturnShippingFromRecord(IDataRecord idr)
        {
            Shipping p = new Shipping();
            p.Code = DataHelper.ConvertToInt(idr[Fields.Code.ToString()]);
            p.Type = DataHelper.ConvertToString(idr[Fields.Type.ToString()]);
            p.Delivery = DataHelper.ConvertToString(idr[Fields.Delivery.ToString()]);
            p.Display = DataHelper.ConvertToString(idr[Fields.Display.ToString()]);
            p.Notes1 = DataHelper.ConvertToString(idr[Fields.Notes1.ToString()]);
            p.Notes2 = DataHelper.ConvertToString(idr[Fields.Notes2.ToString()]);           

            return p;
        }
        #endregion
    }
}
