<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TAJ2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        23 Old Hope Road<br />
        Papine, Kingston<br />
        <abbr title="Phone">P:</abbr>
        876-000-00000
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:tajsup@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:tajmark@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
