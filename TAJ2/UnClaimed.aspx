<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UnClaimed.aspx.cs" Inherits="TAJ2.UnClaimed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--This pages loads registered vehicles that dont have a owner--%>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" BorderColor="#000000" BorderStyle="Solid" BorderWidth="1px" class="table table-condensed table-hover" BackColor="#999999" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="ChassiNumber">
        <Columns>
            <asp:BoundField DataField="ChassiNumber" HeaderText="ChassiNumber" ReadOnly="True" SortExpression="ChassiNumber" />
            <asp:BoundField DataField="LicensePlate" HeaderText="LicensePlate" ReadOnly="True" SortExpression="LicensePlate" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" ReadOnly="True" SortExpression="Brand" />
            <asp:BoundField DataField="Make" HeaderText="Make" ReadOnly="True" SortExpression="Make" />
            <asp:BoundField DataField="Type" HeaderText="Type" ReadOnly="True" SortExpression="Type" />
            <asp:BoundField DataField="Year" HeaderText="Year" ReadOnly="True" SortExpression="Year" />
            <asp:BoundField DataField="Color" HeaderText="Color" ReadOnly="True" SortExpression="Color" />
            <asp:CommandField ShowEditButton="True" EditText="AddTo Profile" UpdateText="Confirm" />
        </Columns>

</asp:GridView>
    <%--Using an update Statement we have a button that allows the User to claim a vehicle as theirs--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TAJConnectionString %>" SelectCommand="SELECT [ChassiNumber], [LicensePlate], [Brand], [Make], [Type], [Year], [Color] FROM [Vehicle] WHERE ([UserID] IS NULL)" DeleteCommand="DELETE FROM [Vehicle] WHERE [ChassiNumber] = @ChassiNumber" InsertCommand="INSERT INTO [Vehicle] ([ChassiNumber], [LicensePlate], [Brand], [Make], [Type], [Year], [Color]) VALUES (@ChassiNumber, @LicensePlate, @Brand, @Make, @Type, @Year, @Color)" UpdateCommand="UPDATE [Vehicle] SET [UserID] = @UserID WHERE [ChassiNumber] = @ChassiNumber">
        <DeleteParameters>
            <asp:Parameter Name="ChassiNumber" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ChassiNumber" Type="String" />
            <asp:Parameter Name="LicensePlate" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
