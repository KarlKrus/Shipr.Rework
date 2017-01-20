using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShipR.Entities;

namespace Shipr.Rework.Shipr.Project.controls
{
    public partial class StoreSelector : System.Web.UI.UserControl
    {
        public List<Store> Source { get; set; }
        public List<Store> SelectedStores { get; set; }
        public ListItemCollection Items { get; set; }
        public string Title { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            chklstStore.DataSource = Source;
            chklstStore.DataValueField = "StoreID";
            chklstStore.DataTextField = "StoreName";
            chklstStore.DataBind();
            Items = chklstStore.Items;
            ltrlTitle.Text = (Title != null) ? Title : "Store";

            if (SelectedStores != null)
            {
                foreach (ListItem item in chklstStore.Items)
                {
                    Store myStoreSelected = SelectedStores.Find(delegate (Store dStore) { return dStore.StoreID == Convert.ToInt32(item.Value); });
                    if (myStoreSelected != null)
                        chklstStore.Items.FindByValue(item.Value).Selected = true;
                }

            }
        }
    }
}