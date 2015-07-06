using Firma.Managers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace Firma
{
    public partial class _Default : Page
    {
        private bool myIsAdmin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Account/Login");
            }
            else
            {
                myIsAdmin = User.IsInRole("Admin");
                setUi();
            }
        }

        private void setUi()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("projekt_id", typeof(int)));
            dt.Columns.Add(new DataColumn("Bezeichnung", typeof(string)));
            dt.Columns.Add(new DataColumn("Beschreibung", typeof(string)));
            dt.Columns.Add(new DataColumn("fk_auftraggeber_id", typeof(string)));
            dt.Columns.Add(new DataColumn("Selected", typeof(string)));
            dt.Columns.Add(new DataColumn("Selected", typeof(string)));
            dt.Columns.Add(new DataColumn("Selected", typeof(string)));
            dt.Columns.Add(new DataColumn("Selected", typeof(string)));
            dt.Columns.Add(new DataColumn("Selected", typeof(string)));
            dt.Columns.Add(new DataColumn("Selected", typeof(string))); 
            //foreach (var projekt in new EntityManager().GetProjects())
            //{
            //    projekt.projekt_id;
            //    projekt.bezeichnung;
            //    projekt.beschreibung;
            //    projekt.fk_auftraggeber_id;
            //    projekt.auftraggeber.bezeichnung;
            //    projekt.auftragsvolumen;
            //    projekt.beginn;
            //    projekt.ende;
            //    projekt.fk_projektleiter_id;
            //    projekt.mitarbeiter.name;
            //    dt.Rows.Add();
            //}
            uiRadGridForSocialUsages.DataSource = dt;
        }

        protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
        {
            if (e.Item is GridCommandItem && !myIsAdmin)
            {
                Button addButton = e.Item.FindControl("AddNewRecordButton") as Button;
                addButton.Visible = false;
                LinkButton lnkButton = (LinkButton)e.Item.FindControl("InitInsertButton");
                lnkButton.Visible = false;
            }
        } 
    }
}