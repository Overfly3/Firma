using Firma.Managers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace Firma
{
    public partial class Department : Page
    {
        bool myIsAdmin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Account/Login");
            }
            else
            {
                myIsAdmin = new PrincipalManager().IsAdminByUserName(User.Identity.Name);
                if (!myIsAdmin)
                {
                    uiRadGridForSocialUsages.AllowAutomaticDeletes = false;
                    uiRadGridForSocialUsages.AllowAutomaticInserts = false;
                    uiRadGridForSocialUsages.AllowAutomaticUpdates = false;
                }
            }
            
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