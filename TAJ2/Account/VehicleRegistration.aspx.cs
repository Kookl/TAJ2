using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TAJ2.Account
{
    public partial class VehicleRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-U4K1BGTN;Initial Catalog=TAJ;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void RegisterClick(object sender, EventArgs e)
        {
            //Get the data from textboxes to store into the database
            int chassi = Convert.ToInt32(chassiNum.Text);
            String b = Brand.Text.Trim();
            String m = make.Text.Trim();
            String type = Type.Text.Trim();
            String y = year.Text.Trim();
            String c = color.Text.Trim();
            String l = plate.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Vehicle] ([ChassiNumber],[LicensePlate],[UserID],[Brand],[Make],[Type],[Year],[Color],[RegistrationExpiry]) VALUES (@ChassiNumber,@LicensePlate,@UserID,@Brand,@Make,@Type,@Year,@Color,@Register)", con);
            cmd.Parameters.AddWithValue("@ChassiNumber", chassi);
            cmd.Parameters.AddWithValue("@LicensePlate", l);
            cmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
            cmd.Parameters.AddWithValue("@Brand", b);
            cmd.Parameters.AddWithValue("@Make", m);
            cmd.Parameters.AddWithValue("@Type", type);
            cmd.Parameters.AddWithValue("@Year", y);
            cmd.Parameters.AddWithValue("@Color", c);
            cmd.Parameters.AddWithValue("@Register", DateTime.Now.AddYears(2)); //Autogenerate the registration expiry date
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("~/YourVehicles.aspx");



        }
    }
}