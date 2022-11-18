<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjouterEvenement.aspx.cs" Inherits="AjouterEvenement" %>

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
            parent.window.gridContact.PerformCallback();
            parent.window.popupWind.Hide();
        }

        function AjouterEvenement() {
            callAddEvent.PerformCallback();
        }

        function EndCallAddEvent(s, e) {
            var choix = s.cp_addEvent;

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
        <dx:ASPxFormLayout runat="server" ID="FormLayoutAjoutEvenement" Width="100%" ClientInstanceName="FormLayout" Theme="Glass">
            <Items>
                <dx:LayoutGroup Width="100%" Caption="Détails Généraux" ColumnCount="2" AlignItemCaptions="true">
                    <GridSettings StretchLastItem="True">
                        <Breakpoints>
                            <dx:LayoutBreakpoint MaxWidth="500" ColumnCount="1" Name="S"/>
                            <dx:LayoutBreakpoint MaxWidth="800" ColumnCount="2" Name="M"/>
                        </Breakpoints>
                    </GridSettings>
                    <Items>
                        <dx:LayoutItem Caption="Type" VerticalAlign="Middle" ColumnSpan="2">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxComboBox runat="server" ID="cbType" ValueType="System.String" Width="100%">
                                        <Items>
                                            <dx:ListEditItem Text="Réunion"/>
                                            <dx:ListEditItem Text="Formation"/>
                                        </Items>
                                    </dx:ASPxComboBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Objet" VerticalAlign="Middle" ColumnSpan="2">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbObjet" Width="100%"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Date début" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxDateEdit ID="dateDebut" runat="server" width="100%"></dx:ASPxDateEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Date fin" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxDateEdit ID="dateFin" runat="server" width="100%"></dx:ASPxDateEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Heure début" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTimeEdit runat="server" ID="heuredebut" Width="100%"></dx:ASPxTimeEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Heure fin" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTimeEdit runat="server" ID="heurefin" Width="100%"></dx:ASPxTimeEdit>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Lieu" VerticalAlign="Middle" ColumnSpan="2">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbLieu" Width="100%"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Attribu" VerticalAlign="Middle" ColumnSpan="2">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>


                                   
                                  
                                    <dx:ASPxGridLookup runat="server" ID="GridAttribu" ClientInstanceName="GridAttribu" AutoPostBack="false" MultiTextSeparator="- "
                                        SelectionMode="Multiple" DataSourceID="SqlContactName"  KeyFieldName="id" TextFormatString="{0}">
                                        
                                        <ValidationSettings Display="Dynamic" ErrorDisplayMode="ImageWithTooltip" ValidationGroup="GroupValidation">
                                            <RequiredField IsRequired="true" ErrorText="*" />
                                        </ValidationSettings>

                                        <Columns>
                                            <dx:GridViewDataTextColumn FieldName="Nom" Caption="Nom et Prénom" Width="270px" VisibleIndex="1"
Settings-AutoFilterCondition="Contains"></dx:GridViewDataTextColumn>
                                            
                                            <dx:GridViewDataTextColumn FieldName="id" Visible="false"></dx:GridViewDataTextColumn>
                                        </Columns>

                                        <GridViewProperties>
                                            <Settings ShowFilterRow="true" 
                                                ShowStatusBar="Visible"/>
                                            <SettingsPager PageSize="7" EnableAdaptivity="true"></SettingsPager>
                                        </GridViewProperties>
                                    </dx:ASPxGridLookup>



                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Description" VerticalAlign="Middle" ColumnSpan="2">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxMemo runat="server" ID="tbdescription" Height="100px"></dx:ASPxMemo>
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
                                        <ClientSideEvents Click="AjouterEvenement" />
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

        <dx:ASPxCallback ID="callAddEvent" ClientInstanceName="callAddEvent" runat="server" OnCallback="callAddEvent_Callback" >
            <ClientSideEvents EndCallback="function(s,e){EndCallAddEvent(s,e);}" />
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


        <asp:SqlDataSource runat="server" ID="SqlContactName" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" SelectCommand="SelectUtilisateur" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    </form>
</body>
</html>
