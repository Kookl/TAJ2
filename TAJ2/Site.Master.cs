using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TAJ2.Account;

namespace TAJ2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Name"] != null)
            {
                Name.Text = "Hello " + Session["Name"].ToString();
            }
            
            if (Session["UserID"] != null)
            {
                signup.Visible = false;
                login.Visible = false;
                logout.Visible = true;

            }
            else
            {
                yourVehicles.Visible = false;
                vehicleStatus.Visible = false;
                vehicleReg.Visible = false;
                unclaimed.Visible = false;
                logout.Visible = false;
            }

        }
    }
}