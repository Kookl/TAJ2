using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAJ2.Account
{
    public partial class VehicleStatus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-U4K1BGTN;Initial Catalog=TAJ;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insurance_Click(object sender, EventArgs e)
        {
            string check;  //Getting the selected ID type to search for the vehicle
            if (InsuranceOptions.SelectedValue == "0")
            {
                check = "LicensePlate";
            }
            else
            {
                check = "ChassiNumber";
            }

            string number = insurance.Text.Trim();
            
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT InsuranceExpiry FROM [dbo].[Status] WHERE [" + check + "] = '" + number + "'", con);
            SqlDataReader dr  = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                DateTime dt = Convert.ToDateTime(dr["InsuranceExpiry"]); //Get the insurance expiry date from the database and convert it to a datatime variable
                DateTime dtnow = DateTime.Now;  //Get the current date
                int res = DateTime.Compare(dt, dtnow);  //Compare the two dates to see if the insurance is expired
                if (res < 0)
                {
                    insuranceStatus.Text = dt.ToString("dd/MM/yyyy") + " EXPIRED";  //If the insurance is expired, display the expiry date and the word EXPIRED
                    insuranceStatus.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    insuranceStatus.Text = dt.ToString("dd/MM/yyyy") + " VALID"; //If the insurance is valid, display the expiry date and the word VALID
                    insuranceStatus.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid or Unregistered ID')</script>"); //If the provided ID is not registered or invlid
            }
        
                
              
            
            
        }
        protected void Fitness_Click(object sender, EventArgs e)
        {

            //Same as above but we only use the chasis number here
            con.Open();
            
            SqlCommand cmd = new SqlCommand("SELECT FitnessExpiry FROM [dbo].[Status] WHERE [ChassiNumber] = '" + chassiNum.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                DateTime dt = Convert.ToDateTime(dr["FitnessExpiry"]); //Same as above but we only use the chasis number here
                DateTime dtnow = DateTime.Now;
                int res2 = DateTime.Compare(dt, dtnow);
                if (res2 < 0)
                {
                    fitnessStatus.Text = dt.ToString("dd/MM/yyyy") + " EXPIRED";
                    fitnessStatus.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    fitnessStatus.Text = dt.ToString("dd/MM/yyyy") + " VALID";
                    fitnessStatus.ForeColor = System.Drawing.Color.Green;
                }

            }


        }
    }
}