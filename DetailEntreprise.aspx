<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailEntreprise.aspx.cs" Inherits="DetailEntreprise" %>

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
                parent.window.popupWind.Hide();
            }
        </script>

        <dx:ASPxFormLayout runat="server" ID="FormLayoutAjoutEntreprise" Width="100%" ClientInstanceName="FormLayout" Theme="Glass" Height="100%">
            <Items>
                <dx:LayoutGroup Width="100%" Caption="Détails Généraux" ColumnCount="2" AlignItemCaptions="true" >
                    <GridSettings StretchLastItem="True">
                        <Breakpoints>
                            <dx:LayoutBreakpoint MaxWidth="500" ColumnCount="1" Name="S"/>
                            <dx:LayoutBreakpoint MaxWidth="800" ColumnCount="2" Name="M"/>
                        </Breakpoints>
                    </GridSettings>
                    <Items>
                        <dx:LayoutItem Caption="Nom Entreprise">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S" />
                                <dx:SpanRule ColumnSpan="2" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbNomEntreprise" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Site internet" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="2" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbSite" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Ville" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbVille" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Pays" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbPays" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
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

                        <dx:LayoutItem Caption="Adresse" VerticalAlign="Middle">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbAdresse" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="Adresse 2" VerticalAlign="NoSet">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbAdresse2" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>

                        <dx:LayoutItem Caption="code Postal" VerticalAlign="Middle" ColumnSpan="2">
                            <SpanRules>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"/>
                                <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"/>
                            </SpanRules>
                            <LayoutItemNestedControlCollection>
                                <dx:LayoutItemNestedControlContainer>
                                    <dx:ASPxTextBox runat="server" ID="tbCodePostal" Width="100%" BackColor="#def2f3"></dx:ASPxTextBox>
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
                                    <dx:ASPxButton runat="server" Text="Fermer" Width="100px" Theme="Glass" AutoPostBack="false" ID="btnFermer">
                                        <Image Url="Image/Delete_32x32.png"></Image>
                                        <ClientSideEvents  Click="FermerPopup"/>
                                    </dx:ASPxButton>
                                </dx:LayoutItemNestedControlContainer>
                            </LayoutItemNestedControlCollection>
                        </dx:LayoutItem>


                    </Items>
                </dx:LayoutGroup>
            </Items>
        </dx:ASPxFormLayout>

        
    </form>
</body>
</html>
