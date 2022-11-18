<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajouterContact.aspx.cs" Inherits="ajouterContact" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <script>
        function FermerPopup() {
            parent.window.gridEntreprise.PerformCallback();
            parent.window.popupWind.Hide();
        }

        function AjouterContact() {
            callAddContact.PerformCallback();
        }

        function EndCallAddContact(s, e) {
            var choix = s.cp_addContact;

            if (choix == "Add") {

                txterror.SetText("Ajouté avec succés");
                alertPopup.Show();
            }
            else {
                txterror.SetText("erreur");
                alertPopup.Show();
            }
        }

        function ClosePopup() {
            alertPopup.Hide();
        }

    </script>

    <form id="form1" runat="server">
        <dx:ASPxFormLayout runat="server" ID="FormLayoutAjoutContact" Width="100%" ClientInstanceName="FormLayout" Theme="Glass">
            <Items>
                <dx:LayoutGroup Width="100%" Caption="Détails Généraux" ColumnCount="2">
                    <GridSettings StretchLastItem="True">
                        <Breakpoints>
                            <dx:LayoutBreakpoint MaxWidth="500" ColumnCount="1" Name="S"/>
                            <dx:LayoutBreakpoint MaxWidth="800" ColumnCount="2" Name="M"/>
                        </Breakpoints>
                    </GridSettings>
                    <Items>
                        <dx:LayoutItem Caption="Civilité" VerticalAlign="Middle" ColumnSpan="2">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="2" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxComboBox runat="server" ID="cbCivilite" ValueType="System.String" BackColor="#def2f3">
                                        <Items>
                                            <dx:ListEditItem Text="Mr"/>
                                            <dx:ListEditItem Text="Mme"/>
                                        </Items>
                                    </dx:ASPxComboBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Nom" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbNom" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Prénom" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbPrenom" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>


                        <dx:LayoutItem Caption="Téléphone" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbTelephone" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Fax" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbFax" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="E-mail" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule  ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbEmail" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Fonction" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbFonction" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
            </Items>
        </dx:ASPxFormLayout>

        <dx:ASPxFormLayout runat="server" Theme="Glass" Width="100%" >
            <Items>
                <dx:LayoutGroup GroupBoxDecoration="Box" ShowCaption="False" Width="100%">
                    <Items>
                        <dx:LayoutItem runat="server" ShowCaption="False" HorizontalAlign="Right" >
                            <LayoutItemNestedControlCollection> 
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxButton runat="server" Text="Enregistrer" Width="100px" Theme="Glass" AutoPostBack="false" ID="btnEnregistrer">
                                        <Image Url="Image/Old/check.png" Width="32px" Height="32px"></Image>
                                        <ClientSideEvents Click="AjouterContact"/>
                                    </dx:ASPxButton>
                                    <dx:ASPxButton runat="server" Text="Annuler" Width="100px" Theme="Glass" AutoPostBack="false" ID="btnAnnuler">
                                        <Image Url="Image/Delete_32x32.png"></Image>
                                        <ClientSideEvents Click="FermerPopup"/>
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>
                    </Items>
                </dx:LayoutGroup>
            </Items>
        </dx:ASPxFormLayout>

        <dx:ASPxCallback ID="callAddContact" ClientInstanceName="callAddContact" runat="server" OnCallback="callAddContact_Callback" >
            <ClientSideEvents EndCallback="function(s,e){EndCallAddContact(s,e);}" />
        </dx:ASPxCallback>

        <dx:ASPxPopupControl ID="alertPopup" ClientInstanceName="alertPopup" runat="server" Width="320" CloseAction="CloseButton" CloseOnEscape="true" Modal="True"
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
                                    <ClientSideEvents Click="ClosePopup" />
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
