<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupprimerEntreprise.aspx.cs" Inherits="SupprimerEntreprise" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <script>
            function FermerPopup() {
                parent.window.gridEntreprise.PerformCallback();
                parent.window.popupWind.Hide();
            }

            function Supprimer() {
                callDelete.PerformCallback();
            }

            function EndcallbacSupprimer(s, e) {
                var choix = s.cp_Exist;
                if (choix == "Supp") {
                    txterror.SetText("Supprimer avec succès");
                    PopupAlerts.Show();
                }
                else  {
                    txterrorVali.SetText("erreur");
                    PopupAlerts.Show();
                }
            }

            function CloseSuppPopup() {
                PopupAlerts.Hide();
            }


        </script>

        <dx:ASPxFormLayout runat="server" ID="FormLayoutSuppEntreprise" Width="100%" ClientInstanceName="FormLayoutSuppEntreprise" Theme="Glass">
            <Items>
                <dx:LayoutGroup>
                    <Items>
                        <dx:LayoutItem Caption="">
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <table width="100%">
                                    <tr>
                                        <td height="70px"></td>
                                    </tr>
                                    <tr>
                                        <td  style="text-align:center">
                                            <dx:ASPxLabel runat="server" ID="txt" ForeColor="Black"  Font-Bold="true"
                                                     ClientInstanceName="txt" Width="100%" Text="Souhaitez-vous réellement supprimer cette entreprise ?"></dx:ASPxLabel>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="30pxpx"></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center">
                                            <dx:ASPxButton runat="server" Text="OK" AutoPostBack="false" Width="100px" Theme="Glass">
                                                <ClientSideEvents Click="Supprimer" />
                                            </dx:ASPxButton>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height="15pxpx"></td>
                                    </tr>

                                    <tr>
                                        <td style="text-align:center">
                                            <dx:ASPxButton runat="server" Text="Fermer" AutoPostBack="false" Width="100px" Theme="Glass">
                                                <ClientSideEvents Click="FermerPopup" />
                                            </dx:ASPxButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="70px"></td>
                                    </tr>
                                </table>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
            </Items>

        </dx:ASPxFormLayout>

        <dx:ASPxCallback ID="callDelete" ClientInstanceName="callDelete" runat="server" OnCallback="callDelete_Callback" >
            <ClientSideEvents EndCallback="function(s,e){EndcallbacSupprimer(s,e);}" />
        </dx:ASPxCallback>
        

        <dx:ASPxPopupControl ID="PopupAlerts" ClientInstanceName="PopupAlerts" runat="server" Width="320" CloseAction="CloseButton" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" HeaderText="Alert" AllowDragging="True" PopupAnimationType="None" EnableViewState="False" AutoUpdatePosition="true">
            <ContentCollection>
                <dx:PopupControlContentControl>
                    
                    <table width="100%">   
                        <tr>
                            <td  style="text-align:center">
                                <dx:ASPxLabel runat="server" ID="txterror" ForeColor="Maroon"  Font-Bold="true"
                                         ClientInstanceName="txterror" Width="100%"></dx:ASPxLabel>

                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center">
                                <dx:ASPxButton runat="server" Text="OK" AutoPostBack="false" Width="100px" >
                                    <ClientSideEvents Click="CloseSuppPopup" />
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                    
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        
    </form>
</body>
</html>
