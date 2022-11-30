<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleRegistration.aspx.cs" Inherits="TAJ2.Account.VehicleRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     
    <h2 class="headers">Motor Vehicle Registeration</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <hr />
             <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Brand</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Brand" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Brand"
                    CssClass="text-danger" ErrorMessage="The Brand is required." />
            </div>
        </div>

             <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Make</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="make" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="make"
                    CssClass="text-danger" ErrorMessage="The Make is required." />
            </div>
        </div>

             <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Type</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Type" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Type"
                    CssClass="text-danger" ErrorMessage="Type is required." />
            </div>
        </div>

             <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Year</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="year" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="year"
                    CssClass="text-danger" ErrorMessage="Year is required." />
            </div>
        </div>
    
    
           

    
             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Color</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="color" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="color"
                    CssClass="text-danger" ErrorMessage="Color is required." />
            </div>
        </div>

    
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Chassi Number</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="chassiNum" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="chassiNum"
                CssClass="text-danger" ErrorMessage="Chassi Number is required." />
        </div>
    </div>
    
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label">License Plate#</asp:Label>
        <asp:TextBox ID="plate" runat="server" CssClass="form-control"></asp:TextBox>
       <asp:RequiredFieldValidator runat="server" ControlToValidate="plate"
                CssClass="text-danger" ErrorMessage="License Plate Number is required." />
    </div>

    <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Submit" CssClass="styleButtons" OnClick="RegisterClick" />
            </div>
        </div>
</asp:Content>
