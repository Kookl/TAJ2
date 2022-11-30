using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAJ2
{
    public partial class UpdateRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-U4K1BGTN;Initial Catalog=TAJ;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Getting the Chassi Number and Registration Expiry Sessions and storing in variables
            ChassiNumber.Text = Session["Chassi"].ToString();   
            RegExpiryDate.Text = Session["RegistrationExpiry"].ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            int chassi = Convert.ToInt32(Session["Chassi"]);
            SqlCommand cmd = new SqlCommand("SELECT InsuranceExpiry,FitnessExpiry FROM [dbo].[Status] WHERE ChassiNumber = '" + chassi + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                DateTime dtnow = DateTime.Now;
                DateTime insure = Convert.ToDateTime(dr["InsuranceExpiry"]); //Get the insurance expiry date from the database and convert it to a datatime variable
                DateTime fit = Convert.ToDateTime(dr["FitnessExpiry"]); //Get the fitness expiry date from the database and convert it to a datatime variable
                int res1 = DateTime.Compare(insure, dtnow); //Comparing these dates to current dates to see if they are expired
                int res2 = DateTime.Compare(fit, dtnow);

                //If any of the dates are expired, display that the vehicle is not eligible for registration renewal
                if (res1 < 0)
                {
                    Response.Write("<script>alert('Insurance Expired not Eligible for Registration Renewal')</script>");
                }
                else if (res2 < 0)
                {
                    Response.Write("<script>alert('Fitness Expired not Eligible for Registration Renewal')</script>");
                }
                else
                {
                    //If the vehicle is eligible for registration renewal, update the registration expiry date in the database
                    con.Close();
                    DateTime reg = Convert.ToDateTime(Session["RegistrationExpiry"]);
                    if (ExtendOptions.SelectedValue == "0")
                    {
                        reg = reg.AddMonths(6); //If the user selected the 6 months option
                    }
                    else
                    {
                        reg = reg.AddYears(1);  //if the user selected the 1 year option
                    }
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("UPDATE [dbo].[Vehicle] SET RegistrationExpiry = '" + reg + "' WHERE ChassiNumber = '" + chassi + "'", con);
                    NewDate.Text = reg.ToString();
                    cmd2.ExecuteNonQuery();

                    con.Close();



                }
            }

        }
    }
}