<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TAJ_FITNESS_AND_INSURANCE_EC1.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="headers">Registration</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />

         <hr />
            <h5>Persoanl Information</h5>
         <hr/>

        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">First Name:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="fName" CssClass="form-control" Width="688px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="fName"
                    CssClass="text-danger" ErrorMessage="First Name is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Last Name:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="lName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LName"
                    CssClass="text-danger" ErrorMessage="Last Name is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Middle Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="mName" CssClass="form-control" />
            </div>
        </div>
        <div id="gender" class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Gender</asp:Label>
            <div class="col-md-10">              
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
             </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Date of Birth: </asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="DOB" runat="server" TextMode="Date"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Choose</asp:LinkButton>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DOB"
                    CssClass="text-danger" ErrorMessage="Date of Birth is required." />
            </div>
        </div>

        <div class="form-group">
            <h6><u>Address</u></h6>
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Street</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Street" CssClass="form-control" Width="688px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="street"
                    CssClass="text-danger" ErrorMessage="Street is required." />
                
                 <asp:Label runat="server"  CssClass="col-md-2 control-label">Town</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Town" CssClass="form-control" Width="688px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="town"
                    CssClass="text-danger" ErrorMessage="Town is required." />

                 <asp:Label runat="server"  CssClass="col-md-2 control-label">Parish</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Parish" CssClass="form-control" Width="688px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="parish"
                    CssClass="text-danger" ErrorMessage="Parish is required." />
            </div>
        </div>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Phone Number</asp:Label>
            <div class="col-md-10">

                <asp:TextBox runat="server" ID="phone" CssClass="form-control" Width="688px" TextMode="Phone" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="phone"
                    CssClass="text-danger" ErrorMessage="Phone Number is required." />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">

                <asp:TextBox runat="server" ID="Email" CssClass="form-control" Width="688px" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                    CssClass="text-danger" ErrorMessage="Email is required." />
            </div>
        </div>

        <div id="IDTYPE" class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">ID Type</asp:Label>
            <div class="col-md-10">              
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>National ID</asp:ListItem>
                    <asp:ListItem>Voter&#39;s ID</asp:ListItem>
                    <asp:ListItem>Driver&#39;s Liscence</asp:ListItem>
                </asp:DropDownList>
             </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label"> ID #</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="IDNum" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="IDNum"
                    CssClass="text-danger" ErrorMessage="Identification Number is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">TRN</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TRN" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TRN"
                    CssClass="text-danger" ErrorMessage="TRN is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label"> Driver's Liscences - Issued Date:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="DLID" runat="server" TextMode="Date"></asp:TextBox>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Choose</asp:LinkButton>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DLID"
                    CssClass="text-danger" ErrorMessage="Issue Date is required." />
            </div>
        </div>

            <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"> Drivers's Liscense- Expiry Date: </asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="Expiry" runat="server" TextMode="Date"></asp:TextBox>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton1_Click">Choose</asp:LinkButton>
                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Expiry"
                    CssClass="text-danger" ErrorMessage="Expiry Date is required." />
            </div>
        </div>--%>

             <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label"> Upload PhotoGraph </asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>

            <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label"> Upload a Copy of ID </asp:Label>
            <asp:FileUpload ID="FileUpload2" runat="server" />
            </div>

             <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label"> Upload a Copy of Drivers Lisence </asp:Label>
            <asp:FileUpload ID="FileUpload3" runat="server" />
            </div>


        <hr />
            <h6>Login Credentials</h6>
         <hr/>

        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">User name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />

                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="styleButtons" />
            </div>
        </div>
   </div>

</asp:Content>
