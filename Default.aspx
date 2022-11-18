<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="OfficeWebUI, Version=2.4.4086.15482" Namespace="OfficeWebUI" TagPrefix="OfficeWebUI" %>
<%@ Register Assembly="OfficeWebUI, Version=2.4.4086.15482" Namespace="OfficeWebUI.Ribbon" TagPrefix="OfficeWebUI" %>
<%@ Register Assembly="OfficeWebUI" Namespace="OfficeWebUI.Ribbon" TagPrefix="cc1" %>


<%@ Register TagPrefix="popupWin" TagName="popupWin" Src="poupup.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-color: #fff1ce;
            min-height: 100%;
            padding-bottom: 0;
            font-family: 'Open Sans';
            color: #B9D9DD;
            line-height: 1.5;
        }
        .header {
            line-height: 36px;
	        top: -19px;
	        position: absolute;
	        z-index: 3;
	        width: 100%;
	        border: none 0px #0000;
	        height: 25px;
	        text-align: center;
	        font-size: 16px;
            background-color: #fff1ce;
            font-family: Arial;
            border: none 0px #0000;
            height: 25px;
            text-align: center;
            font-size: 16px;
        }

        .navbar {
            margin: 0;
            padding-left: 0;
            padding-right: 0;
            border-width: 0;
            border-radius: 0;
            -webkit-box-shadow: none;
            box-shadow: none;
            min-height: 45px;
        }

        .logo {
	        float: left;
	        margin-left: 10px;
    
        }

        .text {
            font-size: 25px;
            font-family: Gugi;
            margin: 45px 8px;
            text-align:right;
            left:50px;
            margin-top: 50px;
        }
    </style>
    
    
    <style>
        .w3-badge, .w3-tag {
            background-color: #000;
            color: #fff;
            display: inline-block;
            padding-left: 8px;
            padding-right: 8px;
            text-align: center;
        }

        .w3-badge {
            border-radius: 100%;
        }

        .w3-red, .w3-hover-red:hover {
            color: #fff !important;
            background-color: #f44336 !important;
        }

        .w3-tiny {
            font-size: 10px !important;
        }

        .w3-small {
            font-size: 12px !important;
        }

        .w3-medium {
            font-size: 15px !important;
        }

        .w3-large {
            font-size: 18px !important;
        }

        .w3-xlarge {
            font-size: 24px !important;
        }

        .w3-xxlarge {
            font-size: 36px !important;
        }

        .w3-xxxlarge {
            font-size: 48px !important;
        }

        .w3-jumbo {
            font-size: 64px !important;
        }

        .w3-left-align {
            text-align: left !important;
        }

        .w3-right-align {
            text-align: right !important;
        }

        .w3-justify {
            text-align: justify !important;
        }

        .w3-center {
            text-align: center !important;
        }
    </style>

    

    <script type="text/javascript">
        function popup(url, height, width, title) {
            popupWind.SetSize(height, width);
            popupWind.SetHeaderText(title);
            popupWind.SetContentUrl(url);
            popupWind.Show();
        }

        function DetailEntreprises(value) {
            popup("DetailEntreprise.aspx?id_entreperise=" + value, 800, 400, "Détail Entreprise");
        }
      

        //function DetailEntreprise(value) {
        //    popup("DetailEntreprise.aspx?id_entreperise=" + value, 800, 400, "Détail Entreprise");
        //}

        function AjoutEntreprise(values) {
            popup("AjouterEntreprise.aspx?id_entreperise=" + values, 800, 400, "Ajouter Entreprise");
        }

        function ModifierEntreprise(value) {
            popup("ModifierEntreprise.aspx?id_entreperise=" + value, 800, 400, "Modifier Entreprise");
        }

        function AddEntreprise() {
            popup("AjouterEntreprise.aspx", 800, 400, "Ajouter Entreprise");
        }

        function SupprimerEntreprise(value) {
            popup("SupprimerEntreprise.aspx?id_entreprise=" + value, 800, 400, "Supprimer Entreprise");
        }

        function AddContact(values) {
            popup("ajouterContact.aspx?id_entreprise=" + values, 800,380, "Ajouter Contact");
        }

        function Ajouter_Evenement(values) {
            popup("AjouterEvenement.aspx?id_contact=" + values, 800, 500, "Ajouter Evenement");
        }

    </script>


    <div class="header" style="height: 140px; vertical-align: central ;">
        <div>
            <table>
                <tr>
                    <td height="30px"></td>
                </tr>
            </table>
        </div>

        <div class="logo">
            <asp:Image runat="server" ImageUrl="~/Image/contact/Logo.jpg" Width="240" Height="140" />
        </div>

        <div  class="text"  style="text-align:right;left:50px">
         
            <asp:LoginName ID="LoginName1"  runat="server"/>
            <asp:Label  ID="TxtNom" runat="server"></asp:Label>
            <asp:LoginStatus ID="LoginStatus1" runat="server"  ForeColor="Transparent"  Width="100px"
                LoginText=""
                LogoutText="a    a"
                LogoutPageUrl="~/Account/Login.aspx"
                LogoutAction="RedirectToLoginPage"
                OnLoggedOut="LoginStatus1_LoggedOut"
                OnLoggingOut="LoginStatus1_LoggingOut" />
            
        </div>
    </div>
 
    <OfficeWebUI:Manager ID="rbManager" runat="server" UITheme="Office2010Silver" />
    <table width="100%">
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td align="center">
                            <div class="navbar navbar-inverse navbar-fixed-top">
                                <div class="container">
                                    <div class="navbar-collapse collapse">
                                        <table style="width: 100%; font-size: 1px;">
                                            <tr>
                                                <td height="120px"></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>




                

                            <tableyle="width: 100%; font-size: 1px;">
                                <tr>
                                    <td valign="top" align="left" colspan="2">
                                        <OfficeWebUI:OfficeRibbon ID="MainMenuRibbon"  runat="server" ShowHelpButton="true" ExtraText="SOFTIC" HelpButtonClientClick="return false;" ShowToggleButton="false"
                                             ApplicationMenuColor="#F9507A" ApplicationMenuText="Information SOFTIC" ApplicationMenuType="Default">
                                            <ApplicationMenu>
                                                <MenuItems>
                                                    <cc1:AppMenuItem Text="ee" />
                                                </MenuItems>
                                            </ApplicationMenu>
                                            <Contexts>
                                                <OfficeWebUI:RibbonContext ID="RibbonContextDocument" runat="server" ContextColor="#fff">
                                                    <Tabs>
                                                        <OfficeWebUI:RibbonTab ID="RibbonAccueil" Visible="false" runat="server" Text="Accueil" ClientClick="SetSplitterPane('ListeEntreprise.aspx');return false;">
                                                        </OfficeWebUI:RibbonTab>
                                                        <OfficeWebUI:RibbonTab ID="RibbonDCR" Visible="true" runat="server" Text="Informations générales" ClientClick="SetSplitterPane('Vide.aspx');return false;">
                                                            <Groups>

                                                                <OfficeWebUI:RibbonGroup ID="RibbonGroup2" runat="server" Text="Liste" ShowExpander="true">
                                                                    <Zones>
                                                                        <OfficeWebUI:GroupZone ID="GroupZone2" runat="server">
                                                                            <OfficeWebUI:LargeItem ID="LargeItem1" runat="server" Visible="true" Text="Listes des Contacts" ImageUrl="Image/Resource-managemen.jpg" Tooltip="Ressources" ClientClick="SetSplitterPane('ListeEntreprise.aspx');return false;" />
                                                                        </OfficeWebUI:GroupZone>
                                                                         <OfficeWebUI:GroupZone ID="GroupZone13" runat="server">
                                                                            <Content>
                                                                                  <OfficeWebUI:MediumItem ID="MediumItem5" runat="server" Text="Ajouter" Visible="false" ImageUrl="~/image/add_large.png" ClientClick="ImportTravaux();return false;" />
                                                                                  <OfficeWebUI:MediumItem ID="MediumItem3" runat="server" Text="Modifier" Visible="false"   ImageUrl="~/image/edit.gif" Tooltip="Des donnes" ClientClick="SetSplitterPane('ArchiveManagers.aspx');return false;" />

                                                                            </Content>
                                                                        </OfficeWebUI:GroupZone>                                                                      
                                                                    </Zones>
                                                                   
                                                                   
                                                                </OfficeWebUI:RibbonGroup>
                                                                 <OfficeWebUI:RibbonGroup   ID="RibbonGroup4" runat="server" Text="Agenda" ShowExpander="true">
                                                                    <Zones>
                                                                        <OfficeWebUI:GroupZone ID="GroupZone8" runat="server">
                                                                            <OfficeWebUI:LargeItem ID="LargeItem6" runat="server" Visible="true" Text="Liste Evenement" ImageUrl="Image/Calendrier2.png" Tooltip="Liste Travaux planifiés" ClientClick="SetSplitterPane('Agenda.aspx');return false;" />
                                                                        </OfficeWebUI:GroupZone>
                                                                   
                                                                       
                                                                    </Zones>
                                                                </OfficeWebUI:RibbonGroup>
                                                                
                                                            </Groups>
                                                        </OfficeWebUI:RibbonTab>

                                                        
                                                    </Tabs>
                                                </OfficeWebUI:RibbonContext>
                                            </Contexts>
                                        </OfficeWebUI:OfficeRibbon>
                                    </td>
                                </tr>
                            </table>
                               
                     




                <div style="padding-right: 2px;">
                    <iframe name="ifrDetails" src="ListeEntreprise.aspx" style="border-right: 1px solid #C0C0C0; border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; background-color: Transparent;" width="100%" height="850px" frameborder="1" scrolling="no" id="Iframe1"></iframe>
                </div>
 
         
</asp:Content>
