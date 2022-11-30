<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleStatus.aspx.cs" Inherits="TAJ2.Account.VehicleStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h2 class="headers" align="center">Auto-Mobile Status</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <hr />
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Check Insurance:</asp:Label>
        <div class="col-md-10">
            <asp:DropDownList ID="InsuranceOptions" runat="server">
                <asp:ListItem Value="0">License plate #</asp:ListItem>
                <asp:ListItem Value="1">Chassis Number</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox runat="server" ID="insurance" CssClass="form-control" />
            <asp:Button runat="server"  Text="Submit" CssClass="styleButtons" OnClick="Insurance_Click" />
            <asp:TextBox runat="server" ID="insuranceStatus" CssClass="form-control" ReadOnly="True" />
        </div>
    </div>
    
     
    <div class="form-group">
        <asp:Label runat="server" CssClass="col-md-2 control-label">Check Fitness (ChassiNumber): </asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="chassiNum" Text="" CssClass="form-control" />
            <asp:Button runat="server"  Text="Submit" CssClass="styleButtons" OnClick="Fitness_Click" />
            <asp:TextBox runat="server" ID="fitnessStatus" Text="" CssClass="form-control" ReadOnly="True" />
        </div>
    </div>
</asp:Content>
