
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using TAJ2;

namespace TAJ_FITNESS_AND_INSURANCE_EC1.Account
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-U4K1BGTN;Initial Catalog=TAJ;Integrated Security=True");
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            
            string firstname = fName.Text.Trim();
            string lastName = lName.Text.Trim();
            string middleName = mName.Text.Trim();
            string sex = DropDownList2.SelectedValue.Trim();
            string dob = DOB.Text.Trim();
            string street = Street.Text.Trim();
            string town = Town.Text.Trim();
            string parish = Parish.Text.Trim();
            string phoneNumber = phone.Text.Trim();
            string email = Email.Text.Trim();
            string idType = DropDownList1.SelectedValue.Trim();
            string idNumber = IDNum.Text.Trim();
            string trn = TRN.Text.Trim();

            string userName = UserName.Text.Trim();
            string password = Password.Text.Trim();

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[User] ([UserName],[FirstName],[LastName],[MiddleName],[Sex],[DateOfBirth],[PhoneNumber],[Email],[ID_Type],[ID_Number],[TRN],[Password]) VALUES (@UserName,@FirstName,@LastName,@MiddleName,@Sex,@DOB,@PhoneNumber,@Email,@IDType,@IDNumber,@TRN,@Password)", con);
            SqlCommand cmd2 = new SqlCommand("INSERT INTO [dbo].[Address] ([UserID],[Street],[Town],[Parish]) VALUES (@ID,@Street,@Town,@Parish)", con);
     
            cmd.Parameters.AddWithValue("@UserName", userName);
            cmd.Parameters.AddWithValue("@FirstName", firstname);
            cmd.Parameters.AddWithValue("@LastName", lastName);
            cmd.Parameters.AddWithValue("@MiddleName", middleName);
            cmd.Parameters.AddWithValue("@Sex", sex);
            cmd.Parameters.AddWithValue("@DOB", dob);
            cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@IDType", idType);
            cmd.Parameters.AddWithValue("@IDNumber", idNumber);
            cmd.Parameters.AddWithValue("@TRN", trn);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.ExecuteNonQuery();


            SqlCommand cmd3 = new SqlCommand("SELECT [UserID] FROM [dbo].[User] WHERE [UserName] = @UserName", con);
            cmd3.Parameters.AddWithValue("@UserName", userName);
            int id = (int)cmd3.ExecuteScalar();

            cmd2.Parameters.AddWithValue("@ID", id);
            cmd2.Parameters.AddWithValue("@Street", street);
            cmd2.Parameters.AddWithValue("@Town", town);
            cmd2.Parameters.AddWithValue("@Parish", parish);
            cmd2.ExecuteNonQuery();

            Response.Redirect("~/Default.aspx");
        }

            protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }

        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
    }
}