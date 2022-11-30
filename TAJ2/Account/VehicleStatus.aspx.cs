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
            string check;
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
                DateTime dt = Convert.ToDateTime(dr["InsuranceExpiry"]);
                DateTime dtnow = DateTime.Now;
                int res = DateTime.Compare(dt, dtnow);
                if (res < 0)
                {
                    insuranceStatus.Text = dt.ToString("dd/MM/yyyy") + " EXPIRED";
                    insuranceStatus.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    insuranceStatus.Text = dt.ToString("dd/MM/yyyy") + " VALID";
                    insuranceStatus.ForeColor = System.Drawing.Color.Green;
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>");
            }
        
                
              
            
            
        }
        protected void Fitness_Click(object sender, EventArgs e)
        {
            con.Open();
            
            SqlCommand cmd = new SqlCommand("SELECT FitnessExpiry FROM [dbo].[Status] WHERE [ChassiNumber] = '" + chassiNum.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                DateTime dt = Convert.ToDateTime(dr["FitnessExpiry"]);
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