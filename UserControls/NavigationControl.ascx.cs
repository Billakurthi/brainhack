using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NavigationControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        navBar.DataSource = SiteMap.RootNode.ChildNodes;
        navBar.DataBind();
    }
    protected void navBar_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        SiteMapNode currentRepeaterNode = (SiteMapNode)e.Item.DataItem;
        //((Repeater)e.Item.FindControl("subNavDropdown")).DataSource = currentRepeaterNode.ChildNodes;
        //((Repeater)e.Item.FindControl("subNavDropdown")).DataBind();
    }
}