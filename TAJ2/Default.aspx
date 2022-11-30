<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TAJ2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div style="height:auto" class="container">
        <asp:Image class="image" ID="Image1" runat="server" ImageUrl="~/Images/images.jpg" />
        <div class="text-block" style="left: 32px; top: 87px; width: 372px; height: 194px;">
             <h3>TAJ Fitness and Insurance</h3>
              <h5>The ideal insurance coverage for your motor vehicle.</h5>

             <br />
             <br />
             <br />

             <br />
             &nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Learn More" CssClass="btn1" OnClick="Button1_Click" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:Button ID="Button2" runat="server" Text="Get Started" CssClass="btn2" OnClick="Button2_Click" />


         </div>
    </div>
    <p>
    </p>


</asp:Content>
