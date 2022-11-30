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
                DateTime insure = Convert.ToDateTime(dr["InsuranceExpiry"]);
                DateTime fit = Convert.ToDateTime(dr["FitnessExpiry"]);
                int res1 = DateTime.Compare(insure, dtnow);
                int res2 = DateTime.Compare(fit, dtnow);
                if (res1 < 0)
                {
                    Response.Write("<script>alert('Insurance Expired')</script>");
                }
                else if (res2 < 0)
                {
                    Response.Write("<script>alert('Fitness Expired')</script>");
                }
                else
                {
                    con.Close();
                    DateTime reg = Convert.ToDateTime(Session["RegistrationExpiry"]);
                    if (ExtendOptions.SelectedValue == "0")
                    {
                        reg = reg.AddMonths(6);
                    }
                    else
                    {
                        reg = reg.AddYears(1);
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