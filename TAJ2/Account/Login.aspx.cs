
using System;
using System.Data.SqlClient;
using System.Web;
using TAJ2;


namespace TAJ_FITNESS_AND_INSURANCE_EC1.Account
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-U4K1BGTN;Initial Catalog=TAJ;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Session["Name"] = null;
        }
        protected void LogIn(object sender, EventArgs e)    
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[User] WHERE [Email] = '"+Email.Text.Trim()+"' AND [Password] = '"+ Password.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["UserID"] = dr["UserID"].ToString(); //Get the UserID from the database and store it in the session
                Session["Name"] = dr["UserName"].ToString(); //Get the Name from the database and store it in the session
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>"); //If the person isnt registered
            }



        }


    }
    
}