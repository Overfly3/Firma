<%@ Page Title="Abteilungsdaten anzeigen" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="Firma.Department" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <% if(User.Identity.IsAuthenticated) { %>
    <h1>Abteilungen</h1>
    <telerik:RadGrid ID="uiRadGridForSocialUsages" OnItemDataBound="RadGrid1_ItemDataBound" runat="server" AutoGenerateColumns="false" DataSourceID="uiDataSourceForDepartments" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top" AllowFilteringByColumn="True">
        <ExportSettings>
            <Pdf PageWidth=""></Pdf>
        </ExportSettings>

        <MasterTableView CommandItemDisplay="Top" DataSourceID="uiDataSourceForDepartments" AutoGenerateColumns="false" DataKeyNames="abteilung_id">
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                </telerik:GridEditCommandColumn>
                <telerik:GridButtonColumn Text="Delete" UniqueName="DeleteButtonColumn" CommandName="Delete" ButtonType="ImageButton" />
                <telerik:GridBoundColumn Visible="false" DataField="abteilung_id" ReadOnly="True" HeaderText="abteilung_id" SortExpression="abteilung_id" UniqueName="abteilung_id" DataType="System.Int32" FilterControlAltText="Filter abteilung_id column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="bezeichnung" HeaderText="bezeichnung" SortExpression="bezeichnung" UniqueName="bezeichnung" FilterControlAltText="Filter bezeichnung column"></telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="aufgaben" HeaderText="aufgaben" SortExpression="aufgaben" UniqueName="aufgaben" FilterControlAltText="Filter aufgaben column"></telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
            </EditFormSettings>
        </MasterTableView>
    </telerik:RadGrid>
    <% } %>
    <asp:EntityDataSource runat="server" ID="uiDataSourceForDepartments" DefaultContainerName="firmaEntities" ConnectionString="name=firmaEntities" EnableFlattening="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntitySetName="abteilung"></asp:EntityDataSource>
</asp:Content>