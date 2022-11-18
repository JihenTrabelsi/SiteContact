<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Agenda.aspx.cs" Inherits="Agenda" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.XtraScheduler.v20.1.Core, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraScheduler" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <style>
                .HeaderTitle {
                    text-align: center;
                    font-family: Tahoma;
                    font-weight: bold;
                    font-size: 12px;
                    writing-mode: unset;
                }
        </style>


        <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" ActiveViewType="Timeline" EnableClientRender="false"
            GroupType="Date"
            AppointmentDataSourceID="sqlagenda"
            ResourceDataSourceID="SqlRessource"
            Theme="Glass"  Width="100%">


        <Storage>
            <Appointments ResourceSharing="true">
                <Mappings AppointmentId="id_event" End="date_fin" Start="date_debut" Subject="objet" Description="description" ResourceId="id_contact"  Location="lieu"/>
            </Appointments>
            <Resources>
                <Mappings ResourceId="id" Caption="Nom" />
            </Resources>
        </Storage>
        
        <Views>
                <DayView ResourcesPerPage="3" ShowWorkTimeOnly="true">
                    <WorkTime Start="08:00:00" End="18:00:00"/>
                </DayView>

                <WorkWeekView ResourcesPerPage="2" ShowWorkTimeOnly="true">
                    <WorkTime Start="08:00:00" End="18:00:00"/>
                </WorkWeekView>
                <FullWeekView Enabled="true" ResourcesPerPage="1">
                </FullWeekView>

                <MonthView ResourcesPerPage="5">
                    <AppointmentDisplayOptions StartTimeVisibility="Never" EndTimeVisibility="Never" StatusDisplayType="Bounds" ShowRecurrence="true"/>
                    <MonthViewStyles>
                        <DateCellBody Height="170px" />
                    </MonthViewStyles>
                </MonthView>

                <TimelineView>
                    <TimelineViewStyles>
                        <TimelineCellBody Height="250px" />
                    </TimelineViewStyles>
                </TimelineView>

                <AgendaView Enabled="false" />
            </Views>
        </dxwschs:ASPxScheduler>

        <asp:SqlDataSource runat="server" ID="sqlagenda" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>"
            DeleteCommand="DeleteEvents" DeleteCommandType="StoredProcedure" 
            InsertCommand="AjouterEvent" InsertCommandType="StoredProcedure" 
            SelectCommand="SelectEvents" SelectCommandType="StoredProcedure" 
            UpdateCommand="UpdateEvents" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id_event" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="objet" Type="String" />
                <asp:Parameter Name="date_debut" Type="DateTime" />
                <asp:Parameter Name="date_fin" Type="DateTime" />
                <asp:Parameter DbType="Time" Name="heure_debut" />
                <asp:Parameter DbType="Time" Name="heure_fin" />
                <asp:Parameter Name="attribu" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="lieu" Type="String" />
                <asp:Parameter Name="id_contact" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_event" Type="Int32" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="objet" Type="String" />
                <asp:Parameter Name="date_debut" Type="DateTime" />
                <asp:Parameter Name="date_fin" Type="DateTime" />
                <asp:Parameter DbType="Time" Name="heure_debut" />
                <asp:Parameter DbType="Time" Name="heure_fin" />
                <asp:Parameter Name="attribu" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="lieu" Type="String" />
                <asp:Parameter Name="id_contact" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        
          <asp:SqlDataSource runat="server" ID="SqlRessource" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" SelectCommand="SelectUtilisateur" SelectCommandType="StoredProcedure">
          </asp:SqlDataSource>



    </form>

</body>
</html>
