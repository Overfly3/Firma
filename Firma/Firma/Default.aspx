<%@ Page Title="Projektdaten auflisten" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Firma._Default" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <% if(User.Identity.IsAuthenticated) { %>
    
    <div id="uiDivForGrid" style="width:100%">
        <h1>Abteilungen</h1>
        <telerik:RadGrid ID="uiRadGridForProjectData" OnItemDataBound="RadGrid1_ItemDataBound" runat="server" AllowSorting="True" Skin="MetroTouch" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top" AllowFilteringByColumn="True">
            <ExportSettings>
                <Pdf PageWidth=""></Pdf>
            </ExportSettings>

            <MasterTableView CommandItemDisplay="Top" DataSourceID="uiDataSourceForProjectData" AutoGenerateColumns="False">
                <EditFormSettings>
                    <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
                </EditFormSettings>
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <% } %>
</asp:Content>
