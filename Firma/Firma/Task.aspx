<%@ Page Title="Auftraggeber auflisten" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="Firma.Task" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <% if (User.Identity.IsAuthenticated)
       { %>
    <h1>Auftraggeber</h1>
    <div id="uiDivForGrid" style="width:100%">
        <telerik:RadGrid ID="uiRadGridForTasks" OnItemDataBound="RadGrid1_ItemDataBound" runat="server" DataSourceID="uiDataSourceForTasks" AllowSorting="True" Skin="MetroTouch" EnableUpdate="True" AllowAutomaticDeletes="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" CellSpacing="-1" GridLines="Both" GroupPanelPosition="Top" AllowFilteringByColumn="True">
            <ExportSettings>
                <Pdf PageWidth=""></Pdf>
            </ExportSettings>

            <MasterTableView CommandItemDisplay="Top" DataSourceID="uiDataSourceForTasks" AutoGenerateColumns="False" DataKeyNames="auftraggeber_id">
                <Columns>
                    <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                    </telerik:GridEditCommandColumn>
                    <telerik:GridButtonColumn Text="Delete" UniqueName="DeleteButtonColumn" CommandName="Delete" ButtonType="ImageButton" />
                    <telerik:GridBoundColumn Visible="false" DataField="auftraggeber_id" ReadOnly="True" HeaderText="auftraggeber_id" SortExpression="auftraggeber_id" UniqueName="auftraggeber_id" DataType="System.Int32" FilterControlAltText="Filter auftraggeber_id column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="bezeichnung" HeaderText="Bezeichnung" SortExpression="bezeichnung" UniqueName="bezeichnung" FilterControlAltText="Filter bezeichnung column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="kurzname" HeaderText="Kurzname" SortExpression="kurzname" UniqueName="kurzname" FilterControlAltText="Filter kurzname column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="adr_strasse" HeaderText="Strasse" SortExpression="adr_strasse" UniqueName="adr_strasse" FilterControlAltText="Filter adr_strasse column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="adr_plz" HeaderText="Plz" SortExpression="adr_plz" UniqueName="adr_plz" FilterControlAltText="Filter adr_plz column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="adr_ort" HeaderText="Ort" SortExpression="adr_ort" UniqueName="adr_ort" FilterControlAltText="Filter adr_ort column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="tel" HeaderText="Tel" SortExpression="tel" UniqueName="tel" FilterControlAltText="Filter tel column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="fax" HeaderText="Fax" SortExpression="fax" UniqueName="fax" FilterControlAltText="Filter fax column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="email" HeaderText="Email" SortExpression="email" DataType="System.String" UniqueName="email" FilterControlAltText="Filter email column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="sonderkonditionen" HeaderText="Sonderkonditionen" SortExpression="sonderkonditionen" UniqueName="sonderkonditionen" FilterControlAltText="Filter sonderkonditionen column"></telerik:GridBoundColumn>
                </Columns>
                <EditFormSettings>
                    <EditColumn ButtonType="ImageButton" UniqueName="EditCommandColumn1" FilterControlAltText="Filter EditCommandColumn1 column"></EditColumn>
                </EditFormSettings>
            </MasterTableView>
        </telerik:RadGrid>
    </div>
    <% } %>
    <asp:EntityDataSource runat="server" ID="uiDataSourceForTasks" DefaultContainerName="firmaEntities" ConnectionString="name=firmaEntities" EnableFlattening="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntitySetName="auftraggeber"></asp:EntityDataSource>
</asp:Content>
