<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<%@ Register assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<network host="smtp.gmail.com" userName="votre_email@gmail.com" password="votrePasswordGmail" enableSsl="true" port="465"/>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript">
        var keyValue;
        function ShowEmail(s, e) {
            EmailPopup.ShowAtElement(s.GetMainElement());
        }
    </script>

        <!-- Societe -->

        <asp:SqlDataSource ID="SqlSociete" runat="server" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" DeleteCommand="DeleteSociete" DeleteCommandType="StoredProcedure" InsertCommand="AjoutSociete" InsertCommandType="StoredProcedure" SelectCommand="SelectSociete" SelectCommandType="StoredProcedure" UpdateCommand="updateSociete" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NomSociete" Type="String" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter Name="code_postal" Type="Int32" />
                <asp:Parameter Name="ville" Type="String" />
                <asp:Parameter Name="pays" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="site" Type="String" />
                <asp:Parameter Name="activite" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NomSociete" Type="String" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter Name="code_postal" Type="Int32" />
                <asp:Parameter Name="ville" Type="String" />
                <asp:Parameter Name="pays" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="site" Type="String" />
                <asp:Parameter Name="activite" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <dx:ASPxPopupControl ID="EmailPopup" ClientInstanceName="EmailPopup" runat="server" PopupElementID="EmailBtn"
            Modal="true" ShowHeader="true" HeaderText="Envoyer un E-mail" BackColor="#accbe9"
            MinHeight="200" MinWidth="250" AllowDragging="True" AllowResize="True" CloseAction="CloseButton"
            EnableViewState="False" PopupHorizontalAlign="WindowCenter" Width="500px" Height="450px"
            EnableHierarchyRecreation="True" PopupVerticalAlign="WindowCenter" ShowFooter="True">
            <ContentCollection>
                <dx:PopupControlContentControl>
                    <dx:ASPxFormLayout runat="server" ID="FeedBackFormLayout" Width="100%" Height="100%">
            <Items>
                <dx:LayoutItem Caption="Email">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="TextBoxEmail" runat="server" Width="100%" EnableViewState="False">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Sujet">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox ID="TextBoxSubject" runat="server" Width="100%" EnableViewState="False">
                            </dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="Message" Height="100%">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxMemo ID="TextBoxMessage" runat="server" Height="200" Width="100%" EnableViewState="False">
                            </dx:ASPxMemo>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right">
                    <ParentContainerStyle Paddings-PaddingTop="5" >
                    <Paddings PaddingTop="5px"></Paddings>
                    </ParentContainerStyle>
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxButton ID="ButtonSend" runat="server" Text="Envoyer" OnClick="Send_Click"/>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
            </Items>
        </dx:ASPxFormLayout>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>

        <dx:ASPxGridView ID="GridSociete" runat="server" DataSourceID="SqlSociete" KeyFieldName="id" EnableRowsCache="False" Width="100%" AutoGenerateColumns="False" EnableTheming="True" Theme="Glass">
        <Columns>

           <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowDeleteButton="true" VisibleIndex="0" ButtonRenderMode="Image" ShowApplyFilterButton="true">
           </dx:GridViewCommandColumn>


            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="1" Visible="false">
                    <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="NomSociete" Caption="Nom societé" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="telephone" Caption="Téléphone" VisibleIndex="3" >
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="adresse" Caption="Adresse" VisibleIndex="4" >
            </dx:GridViewDataTextColumn>
            
             <dx:GridViewDataTextColumn FieldName="code_postal" Caption="Code postal" VisibleIndex="5" >
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="ville" Caption="Ville" VisibleIndex="6" >
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="pays" Caption="Pays" VisibleIndex="7" >
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="email" Caption="E-mail" VisibleIndex="8" >
            </dx:GridViewDataTextColumn>
             
            <dx:GridViewDataTextColumn FieldName="site" Caption="Site" VisibleIndex="9" >
            </dx:GridViewDataTextColumn>
            
            <dx:GridViewDataTextColumn FieldName="activite" Caption="Activité" VisibleIndex="10">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataButtonEditColumn>
               <DataItemTemplate>
                    <dx:ASPxButton runat="server" ID="EmailBtn" Image-Url="~/Image/DBMS/Mail16x16.png" BackColor="Transparent" Border-BorderColor="Transparent" Width="100%">
                        <ClientSideEvents Click="ShowEmail" />
                    </dx:ASPxButton>
                </DataItemTemplate>
            </dx:GridViewDataButtonEditColumn>
        </Columns>
        
        <SettingsCommandButton>
                <DeleteButton>
                    <Image Url="Image/Aold/delete.png" Width="15"></Image>
                </DeleteButton>
        </SettingsCommandButton>
        <SettingsCommandButton>
	        <NewButton>
        	        <Image Url="Image/Aold/add.png" Width="15"></Image>
            </NewButton>
        </SettingsCommandButton>
        <SettingsCommandButton>
            <SelectButton>
                    <Image Url="Image/GMAO/ArrowBlue-16.png"></Image>
            </SelectButton>
        </SettingsCommandButton>
        <SettingsCommandButton>
            <ApplyFilterButton>
                <Image Url="Image/FollowUp/Filer.png"></Image>
            </ApplyFilterButton>
        </SettingsCommandButton>
 <SettingsBehavior AllowFocusedRow="true" />
        <SettingsEditing Mode="Batch">
        </SettingsEditing>
    </dx:ASPxGridView>

    <!-- Contact -->

        <asp:SqlDataSource ID="SqlContact" runat="server" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" DeleteCommand="DeleteContact" DeleteCommandType="StoredProcedure" InsertCommand="AjoutContact" InsertCommandType="StoredProcedure" SelectCommand="SelectContact" SelectCommandType="StoredProcedure" UpdateCommand="UpdateContact" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="prenom" Type="String" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="fontion" Type="String" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter DbType="Date" Name="date_naissance" />
                <asp:Parameter Name="civilite" Type="String" />
                <asp:Parameter Name="NomSociete" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter Name="NomSociete" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <dx:ASPxGridView ID="GridContact" runat="server" AutoGenerateColumns="False" DataSourceID="SqlContact" KeyFieldName="id" Theme="Glass"  Width="100%">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="true" ShowNewButtonInHeader="True" VisibleIndex="0" ButtonRenderMode="Image">
                </dx:GridViewCommandColumn>

                <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="1" Visible="false">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="nom" Caption="Nom" VisibleIndex="2">
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="prenom" Caption="Prénom" VisibleIndex="3">
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="telephone" Caption="Téléphone" VisibleIndex="4">
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataTextColumn FieldName="email" Caption="E-mail" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataTextColumn FieldName="fontion" Caption="Fonction" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataTextColumn FieldName="adresse" Caption="Adresse" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataDateColumn FieldName="date_naissance" Caption="Date de naissance" VisibleIndex="8">
                </dx:GridViewDataDateColumn>
                
                <dx:GridViewDataComboBoxColumn Caption="Civilité" FieldName="civilite" VisibleIndex="9">
                     <PropertiesComboBox>
                         <Items>
                             <dx:ListEditItem value="Mr" />
                             <dx:ListEditItem Value="Mme" />
                         </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="NomSociete" Caption="Nom Societé" VisibleIndex="10">
                </dx:GridViewDataTextColumn>

                <dx:GridViewDataButtonEditColumn>
               <DataItemTemplate>
                    <dx:ASPxButton runat="server" ID="EmailBtn" Image-Url="~/Image/DBMS/Mail16x16.png" BackColor="Transparent" Border-BorderColor="Transparent" Width="100%">
                        <ClientSideEvents Click="ShowEmail" />
                    </dx:ASPxButton>
                </DataItemTemplate>
            </dx:GridViewDataButtonEditColumn>

            </Columns>
            <SettingsCommandButton>
                <DeleteButton>
                    <Image Url="Image/Aold/delete.png" Width="15"></Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsCommandButton>
	            <NewButton>
        	            <Image Url="Image/Aold/add.png" Width="15"></Image>
                    </NewButton>
            </SettingsCommandButton>

            <SettingsEditing Mode="Batch">
            </SettingsEditing>
        </dx:ASPxGridView>

        <!-- Taches -->

        <asp:SqlDataSource ID="SqlTaches" runat="server" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" DeleteCommand="DeleteTache" DeleteCommandType="StoredProcedure" InsertCommand="AjoutTache" InsertCommandType="StoredProcedure" SelectCommand="SelectTache" SelectCommandType="StoredProcedure" UpdateCommand="UpdateTache" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="titre" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="heure" Type="String" />
                <asp:Parameter Name="priorite" Type="Int32" />
                <asp:Parameter Name="affectation" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="heure" Type="String" />
                <asp:Parameter Name="priorite" Type="Int32" />
                <asp:Parameter Name="affectation" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <dx:ASPxGridView ID="GridTaches" runat="server" AutoGenerateColumns="False" DataSourceID="SqlTaches" KeyFieldName="id" Theme="Glass" Width="100%">
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="true" ShowNewButtonInHeader="true" VisibleIndex="0" ButtonRenderMode="Image">
                </dx:GridViewCommandColumn>
                
                <dx:GridViewDataTextColumn FieldName="titre" Caption="Titre" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataTextColumn FieldName="description" Caption="Description" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataDateColumn FieldName="date" Caption="Date" VisibleIndex="4">
                </dx:GridViewDataDateColumn>
                
                <dx:GridViewDataComboBoxColumn Caption="Heure" FieldName="heure" VisibleIndex="5">
                     <PropertiesComboBox>
                         <Items>
                             <dx:ListEditItem value="08h00" />
                             <dx:ListEditItem Value="08h30" />
                             <dx:ListEditItem value="09h00" />
                             <dx:ListEditItem Value="09h30" />
                             <dx:ListEditItem value="10h00" />
                             <dx:ListEditItem Value="10h30" />
                             <dx:ListEditItem value="11h00" />
                             <dx:ListEditItem Value="11h30" />
                             <dx:ListEditItem value="12h00" />
                             <dx:ListEditItem Value="12h30" />
                             <dx:ListEditItem value="13h00" />
                             <dx:ListEditItem Value="13h30" />
                             <dx:ListEditItem value="14h00" />
                             <dx:ListEditItem Value="14h30" />
                             <dx:ListEditItem value="15h00" />
                             <dx:ListEditItem Value="15h30" />
                             <dx:ListEditItem value="16h00" />
                             <dx:ListEditItem Value="16h30" />
                             <dx:ListEditItem value="17h00" />
                             <dx:ListEditItem Value="17h30" />
                             <dx:ListEditItem value="18h00" />
                         </Items>
                     </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>

                <dx:GridViewDataSpinEditColumn FieldName="priorite" Caption="Priorité" VisibleIndex="6">
                    <PropertiesSpinEdit MinValue="1" MaxValue="3" NumberType="Integer" />
                </dx:GridViewDataSpinEditColumn>
                
                <dx:GridViewDataTextColumn FieldName="affectation" Caption="Affectation" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsCommandButton>
                <DeleteButton>
                    <Image Url="Image/Aold/delete.png" Width="15"></Image>
                </DeleteButton>
            </SettingsCommandButton>
            <SettingsCommandButton>
	            <NewButton>
        	        <Image Url="Image/Aold/add.png" Width="15"></Image>
                </NewButton>
            </SettingsCommandButton>
            <SettingsEditing Mode="Batch"></SettingsEditing>
        </dx:ASPxGridView>
       </form>
   
</body>
</html>
