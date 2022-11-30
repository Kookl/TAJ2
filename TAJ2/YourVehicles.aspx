<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="YourVehicles.aspx.cs" Inherits="TAJ2.YourVehicles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ChassiNumber" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ChassiNumber" HeaderText="ChassiNumber" ReadOnly="True" SortExpression="ChassiNumber" />
            <asp:BoundField DataField="LicensePlate" HeaderText="LicensePlate" SortExpression="LicensePlate" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="RegistrationExpiry" HeaderText="RegistrationExpiry" SortExpression="RegistrationExpiry" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick ="Button1_Click" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TAJConnectionString %>" DeleteCommand="DELETE FROM [Vehicle] WHERE [ChassiNumber] = @ChassiNumber" InsertCommand="INSERT INTO [Vehicle] ([ChassiNumber], [LicensePlate], [Brand], [Make], [Type], [Year], [Color], [RegistrationExpiry]) VALUES (@ChassiNumber, @LicensePlate, @Brand, @Make, @Type, @Year, @Color, @RegistrationExpiry)" SelectCommand="SELECT [ChassiNumber], [LicensePlate], [Brand], [Make], [Type], [Year], [Color], [RegistrationExpiry] FROM [Vehicle] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Vehicle] SET [LicensePlate] = @LicensePlate, [Brand] = @Brand, [Make] = @Make, [Type] = @Type, [Year] = @Year, [Color] = @Color, [RegistrationExpiry] = @RegistrationExpiry WHERE [ChassiNumber] = @ChassiNumber">
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
            <asp:Parameter DbType="Date" Name="RegistrationExpiry" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="LicensePlate" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter DbType="Date" Name="RegistrationExpiry" />
            <asp:Parameter Name="ChassiNumber" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

