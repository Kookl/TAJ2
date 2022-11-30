<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateRegistration.aspx.cs" Inherits="TAJ2.UpdateRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Text="ChassiNumber"></asp:Label>
    <asp:TextBox ID="ChassiNumber" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Registration Expiry Date"></asp:Label>
    <asp:TextBox ID="RegExpiryDate" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Update Registration"></asp:Label>
    &nbsp;&nbsp;
    <asp:DropDownList ID="ExtendOptions" runat="server">
        <asp:ListItem Value="0">6 months</asp:ListItem>
        <asp:ListItem Value="1">1 Year</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label4" runat="server" Text="New Expiry Date"></asp:Label>
    <asp:TextBox ID="NewDate" runat="server" ReadOnly="True"></asp:TextBox>
    
</asp:Content>
