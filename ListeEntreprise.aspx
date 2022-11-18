 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListeEntreprise.aspx.cs" Inherits="ListeEntreprise" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <script type="text/javascript">

            function GridMenuDetaiSerItemClick(e) {
                if (e.item == null) return;
                var name = e.item.name;

                if (name == "AddEntr") window.parent.AddEntreprise();
                if (name == "AddContact") AddContact();
                if (name == "DetailEntr") showDetailEntr();
                if (name == "DeletEntre") showDeletEntre();
                if (name == "ModEntr") showModEntr();
            }

            function GridMenuDetaiEvenmItemClick(e) {
                if (e.item == null) return;
                var name = e.item.name;
                if (name == "AddEven") AddEven();
            }

            function GridMenuDetaiEvenmItemAttribuClick(e) {
                if (e.item == null) return;
                var name = e.item.name;
                if (name == "detailAttribu") ShowGestionAccess();
            }

            function ShowGestionAccess() {
                GridEvenement.GetRowValues(GridEvenement.GetFocusedRowIndex(), 'id_event', GetGestionAccessCallback);
            }

            function GetGestionAccessCallback() {
                CallbackGestionAcces.PerformCallback();
                popupAcces.Show();
            }

            function AddEven() {
                gridContact.GetRowValues(gridContact.GetFocusedRowIndex(), 'id_contact', SelectAddEvenement);
            }

            function SelectAddEvenement(Values) {
                window.parent.Ajouter_Evenement(Values)
            }

            function CallbackInsert() {
                window.parent.AddEntreprise();
            }

            function AddContact() {
                gridEntreprise.GetRowValues(gridEntreprise.GetFocusedRowIndex(), 'id_entreprise', SelectAddContac);
            }

            function SelectAddContac(Values) {
                window.parent.AddContact(Values)
            }

            function AddEntr() {
                gridEntreprise.GetRowValues(gridEntreprise.GetFocusedRowIndex(), 'id_entreprise', SelectAddEntreprise);
            }

            function SelectAddEntreprise(Values) {
                window.parent.AjoutEntreprise(Values);
            }

            function showModEntr() {
                gridEntreprise.GetRowValues(gridEntreprise.GetFocusedRowIndex(), 'id_entreprise', SelectShowUpdateEntreprise);
            }

            function SelectShowUpdateEntreprise(value) {
                window.parent.ModifierEntreprise(value);
            }

            function showDeletEntre() {
                gridEntreprise.GetRowValues(gridEntreprise.GetFocusedRowIndex(), 'id_entreprise', SelectshowSuppEntre);
            }

            function SelectshowSuppEntre(Value) {
                window.parent.SupprimerEntreprise(Value);
            }


            function showDetailEntr() {
                gridEntreprise.GetRowValues(gridEntreprise.GetFocusedRowIndex(), 'id_entreprise', SelectShowItemEntr);
            }

            function SelectShowItemEntr(values) {
                 window.parent.DetailEntreprises(values);
            }

            function CallEven() {
                gridEvenement.PerformCallback();
            }

            //function CallbakAddAccesExit() {
            //    popupAcces.Hide();
            //    window.parent.dnnModal.load();
            //}

            //function CallbakAddAcces() {
            //    callbAddGestionAcces.PerformCallback();
            //}

            //function EndCallbackAccess() {
            //    PopupAlertAcces.Show();
            //    txterrorAcc.SetText("Ajouté avec success");
            //}

        </script>

        <script type="text/javascript">

            function RowChangedSociete() {
                gridEntreprise.GetRowValues(gridEntreprise.GetFocusedRowIndex(), 'id_entreprise', SelectItem);
            }

            function SelectItem(values) {
                gridContact.PerformCallback(values);
            }

            function calleven() {
                gridContact.GetRowValues(gridContact.GetFocusedRowIndex(), 'id_contact', SelectItemevenement);
            }


            function SelectItemevenement(value) {
            
                gridEvenement.PerformCallback(value);
            }

        </script>

        <dx:ASPxPopupMenu runat="server" ID="ASPxPopupDetailEvenMenu" ClientInstanceName="ASPxPopupDetailEvenMenu" CssPostfix="Glass" Theme="Glass">
           <Items>
               <dx:MenuItem Name="AddEven" Text="Ajouter événement">
                   <Image Url="~/Image/Aold/add.png" Width="16px" Height="16px"></Image>
               </dx:MenuItem>
           </Items> 
           <SubMenuStyle GutterWidth="0px"/>
           <ClientSideEvents ItemClick="function(s, e) {GridMenuDetaiEvenmItemClick(e);}"/>
       </dx:ASPxPopupMenu>

        <dx:ASPxPopupMenu ID="ASPxPopupDetailEvenAttriMenu" runat="server" ClientInstanceName="ASPxPopupDetailEvenAttriMenu" CssPostfix="Glass" Theme="Glass">
            <Items>

                <dx:MenuItem Name="detailAttribu" Text="Détails attribut">
                    <Image Height="16px" Url="~/Image/action.png" Width="16px">
                    </Image>
                </dx:MenuItem>
                   
            </Items>
            <SubMenuStyle GutterWidth="0px" />
            <ClientSideEvents ItemClick="function(s, e) {GridMenuDetaiEvenmItemAttribuClick(e);}" />
        </dx:ASPxPopupMenu>

        <dx:ASPxPopupMenu runat="server" ID="ASPxPopupDetailSErMenu" ClientInstanceName="ASPxPopupDetailSErMenu" Theme="Glass">
            <Items>
                <dx:MenuItem Name="DetailEntr" Text="Entreprise">
                    <Image Height="16px" Width="16px" Url="Image/action.png"></Image>
                        <Items>

                            <dx:MenuItem Name="DetailEntr" Text="Détails Entreprise">
                                <Image Height="16px" Width="16px" Url="Image/detail-icon-10.jpg"></Image>
                            </dx:MenuItem>

                            <dx:MenuItem Name="AddEntr" Text="Ajouter Entreprise">
                                <Image  Height="16px" Width="16px" Url="Image/add.png"></Image>
                            </dx:MenuItem>

                            <dx:MenuItem Name="ModEntr" Text="Modifier Entreprise">
                                <Image Height="16px" Width="16px" Url="Image/edit_file.png"></Image>
                            </dx:MenuItem>

                            <dx:MenuItem Name="DeletEntre" Text="Supprimer Entreprise">
                                <Image Height="16px" Width="16px" Url="Image/Delete_32x32.png"></Image>
                            </dx:MenuItem>

                        </Items>
                </dx:MenuItem>

                <dx:MenuItem Name="AddContact" Text="Ajouter Contact">
                    <Image Height="16px" Width="16px" Url="Image/action.png"></Image>
                </dx:MenuItem>
            </Items>
            <SubMenuStyle GutterWidth="0px"/>
            <ClientSideEvents ItemClick="function(s, e) {GridMenuDetaiSerItemClick(e);}"/>
        </dx:ASPxPopupMenu>

        <dx:ASPxSplitter FullscreenMode="true" Theme="Glass" Width="100%" runat="server" Orientation="Horizontal">
            <Panes>
                <dx:SplitterPane Size="30%" ScrollBars="Horizontal">
                    <ContentCollection>
                        <dx:SplitterContentControl >

                            <dx:ASPxGridView ID="gridEntreprise" runat="server" Theme="Glass"  OnCustomCallback="gridEntreprise_CustomCallback"
                                DataSourceID="Sqlentreprise" ClientInstanceName="gridEntreprise" Width="100%"
                                AutoGenerateColumns="false" KeyFieldName="id">
                                <ClientSideEvents Init="function(s, e) { 
                                                  var popup = window.parent; 
                                                  popup.window['gridEntreprise'] = gridEntreprise;}"
                                                 FocusedRowChanged="RowChangedSociete"
                                                 ContextMenu="function(s, e) {
                                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent)
                                                 if(e.objectType == 'row'){
                                                 gridEntreprise.SetFocusedRowIndex(e.index);
                                                 ASPxPopupDetailSErMenu.ShowAtPos(x,y);}}"/>
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="id_entreprise" ReadOnly="True" VisibleIndex="1" Visible="false">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>

                                    <dx:GridViewDataTextColumn FieldName="nom" Caption="Liste des Entreprises" VisibleIndex="2" ShowInCustomizationForm="true">
                                    </dx:GridViewDataTextColumn>
                                </Columns>

                                <Settings VerticalScrollableHeight="500" VerticalScrollBarMode="Visible" />

                                <SettingsSearchPanel Visible="true" />
                                
                                <SettingsBehavior AllowFocusedRow="true"/>
                                
                                <Toolbars>
                                    <dx:GridViewToolbar>
                                        <SettingsAdaptivity Enabled="true" EnableCollapseToSideMenu="true" EnableCollapseRootItemsToIcons="true"/>
                                        <Items>
                                            <dx:GridViewToolbarItem Alignment="Right" Command="New">
                                                <Template>
                                                    <dx:ASPxButton HorizontalAlign="Center" runat="server" Text=" " RenderMode="Link" AutoPostBack="false">
                                                        <Image Url="Image/add_large.png" Width="25px"></Image>
                                                        <ClientSideEvents Click="CallbackInsert"/>
                                                    </dx:ASPxButton>
                                                </Template>
                                            </dx:GridViewToolbarItem>
                                        </Items>
                                    </dx:GridViewToolbar>
                                </Toolbars>

                                <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" ></SettingsExport>
                            </dx:ASPxGridView>
                        
                        </dx:SplitterContentControl>
                    </ContentCollection>
                </dx:SplitterPane>

                <dx:SplitterPane>
                    <Panes>
                        <dx:SplitterPane Size="50%" ScrollBars="Horizontal">
                            <ContentCollection>
                                <dx:SplitterContentControl>

                                    <dx:ASPxGridView ID="gridContact" ClientInstanceName="gridContact" runat="server" Theme="Glass" AutoGenerateColumns="false" Width="100%"
                                        DataSourceID="sqlContact" OnCustomCallback="gridContact_CustomCallback" KeyFieldName="id_contact"> 
                                        <ClientSideEvents Init="function(s, e) { 
                                                                      var popup = window.parent; 
                                                                      popup.window['gridContact'] = gridContact;}"
                                                                      FocusedRowChanged="calleven"
                                                                      ContextMenu="function(s, e) {
                                                                      var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                                                      var y = ASPxClientUtils.GetEventY(e.htmlEvent)
                                                                      if(e.objectType == 'row'){
                                                                      gridContact.SetFocusedRowIndex(e.index);
                                                                      ASPxPopupDetailEvenMenu.ShowAtPos(x,y);}}" />
                                        <Columns>

                                            <dx:GridViewCommandColumn ShowDeleteButton="true" ShowEditButton="true" ButtonRenderMode="Image" Caption=" ">
                                            </dx:GridViewCommandColumn>

                                            <dx:GridViewDataTextColumn FieldName="id_contact" ReadOnly="true" Visible="false" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="nom" Caption="Nom" VisibleIndex="3"></dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="prenom" Caption="Prénom" VisibleIndex="4">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="civilite" Caption="Civilité" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="telephone" Caption="Téléphone" VisibleIndex="5">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="fax" Caption="Fax" VisibleIndex="6">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="email" Caption="E-mail" VisibleIndex="7">
                                            </dx:GridViewDataTextColumn>
                
                                            <dx:GridViewDataTextColumn FieldName="fonction" Caption="Fonction" VisibleIndex="8">
                                            </dx:GridViewDataTextColumn>

                                            <dx:GridViewDataTextColumn FieldName="id_entreprise" Visible="false">
                                            </dx:GridViewDataTextColumn>

                                        </Columns>
                                        <SettingsCommandButton>
                                                    <DeleteButton>
                                                            <Image ToolTip="Supprimer" Url="Image/Aold/delete.png" Width="15"></Image>
                                                        </DeleteButton>
                                                        <NewButton>
                                                        <Image Url="Image/add_large.png" Width="20px">
                                                        </Image>
                                                    </NewButton>

                                                    <EditButton>
                                                        <Image ToolTip="Modifier" Url="Image/FollowUp/icons8-edit-20.png"></Image>
                                                    </EditButton>
                                            
                                                    <CancelButton ButtonType="Image" RenderMode="Image">
                                                        <Image ToolTip="le formulaire de modification sans sauvegarder les changements" Url="Image/cancel.gif">
                                                        </Image>
                                                    </CancelButton>
                                        </SettingsCommandButton>

                                        <SettingsEditing Mode="Batch">
                                        </SettingsEditing>

                                        <SettingsBehavior AllowFocusedRow="true"/>
                                                    
                                         <Settings ShowFilterRow="true" VerticalScrollableHeight="250" VerticalScrollBarMode="Visible"/>

                                         <SettingsSearchPanel Visible="true"/>
                                    </dx:ASPxGridView>  

                                </dx:SplitterContentControl>
                            </ContentCollection>
                        </dx:SplitterPane>

                        <dx:SplitterPane Size="50%" ScrollBars="Horizontal">
                            <ContentCollection>
                                <dx:SplitterContentControl>

                                    <dx:ASPxGridView ID="gridEvenement" ClientInstanceName="gridEvenement" runat="server" Theme="Glass" 
                                        DataSourceID="SqlEvenement" Width="100%"  KeyFieldName="id_event" OnCustomCallback="gridEvenement_CustomCallback">
                                        <ClientSideEvents Init="function(s, e) { 
                                                  var popup = window.parent; 
                                                  popup.window['gridEvenement'] = gridEvenement;}"
                                                 
                                                 ContextMenu="function(s, e) {
                                                 var x = ASPxClientUtils.GetEventX(e.htmlEvent);
                                                 var y = ASPxClientUtils.GetEventY(e.htmlEvent)
                                                 if(e.objectType == 'row'){
                                                 gridEvenement.SetFocusedRowIndex(e.index);
                                                 ASPxPopupDetailEvenAttriMenu.ShowAtPos(x,y);}}"/>
                                        <Columns>

                                                        <dx:GridViewCommandColumn ShowDeleteButton="true" ShowEditButton="true" ButtonRenderMode="Image" Caption=" ">
                                                        </dx:GridViewCommandColumn>

                                                        <dx:GridViewDataTextColumn FieldName="id_event" ReadOnly="True" VisibleIndex="1" Visible="false">
                                                            <EditFormSettings Visible="False" />
                                                        </dx:GridViewDataTextColumn>

                                                        <dx:GridViewDataComboBoxColumn FieldName="type" Caption="type" VisibleIndex="2">
                                                             <PropertiesComboBox>
                                                                 <Items>
                                                                     <dx:ListEditItem value="Formation" />
                                                                     <dx:ListEditItem Value="Evénement" />
                                                                 </Items>
                                                            </PropertiesComboBox>
                                                        </dx:GridViewDataComboBoxColumn>

                                                        <dx:GridViewDataTextColumn FieldName="objet" Caption="Objet" VisibleIndex="3">
                                                        </dx:GridViewDataTextColumn>

                                                        <dx:GridViewDataDateColumn FieldName="date_debut" Caption="Date début" VisibleIndex="4">
                                                        </dx:GridViewDataDateColumn>

                                                        <dx:GridViewDataDateColumn FieldName="date_fin" Caption="Date fin" VisibleIndex="5">
                                                        </dx:GridViewDataDateColumn>

                                                        <dx:GridViewDataTimeEditColumn FieldName="heure_debut" Caption="Heure début" VisibleIndex="6">
                                                        </dx:GridViewDataTimeEditColumn>

                                                        <dx:GridViewDataTimeEditColumn FieldName="heure_fin" Caption="Heure fin" VisibleIndex="7">
                                                        </dx:GridViewDataTimeEditColumn>

                                                        <dx:GridViewDataTextColumn FieldName="attribu" Caption="Attribu" VisibleIndex="8">
                                                        </dx:GridViewDataTextColumn>

                                                        <dx:GridViewDataTextColumn FieldName="lieu" Caption="Lieu" VisibleIndex="9">
                                                        </dx:GridViewDataTextColumn>

                                                        <dx:GridViewDataTextColumn FieldName="description" Caption="Description" VisibleIndex="10">
                                                        </dx:GridViewDataTextColumn>

                                                        <dx:GridViewDataTextColumn FieldName="id_contact" Visible="false">
                                                        </dx:GridViewDataTextColumn>

                                        </Columns>
                                        <SettingsCommandButton>
                                            <NewButton>
                                                <Image Url="Image/add_large.png" Width="15px">
                                                </Image>
                                            </NewButton>
                                            <EditButton>
                                                <Image ToolTip="Modifier" Url="Image/FollowUp/icons8-edit-20.png">
                                                </Image>
                                            </EditButton>
                                            <CancelButton ButtonType="Image" RenderMode="Image">
                                                <Image ToolTip="Close Edit Form without saving changes" Url="Image/cancel.gif">
                                                </Image>
                                            </CancelButton>
                                            <DeleteButton>
                                                <Image ToolTip="Supprimer" Url="Image/Aold/delete.png" Width="15px">
                                                </Image>
                                            </DeleteButton>
                                        </SettingsCommandButton>

                                        <SettingsEditing Mode="Batch">
                                        </SettingsEditing>


                                        <Settings VerticalScrollableHeight="250" VerticalScrollBarMode="Visible"/>
                                                
                                        <SettingsBehavior AllowFocusedRow="True" />
                                        
                                        <SettingsSearchPanel Visible="True" />
                                        
                                        <SettingsExport EnableClientSideExportAPI="True" ExcelExportMode="DataAware"></SettingsExport>
                                    </dx:ASPxGridView>

                                </dx:SplitterContentControl>
                            </ContentCollection>
                        </dx:SplitterPane>
                    </Panes>
                </dx:SplitterPane>
            </Panes>
        </dx:ASPxSplitter>



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





        <asp:SqlDataSource runat="server" ID="Sqlentreprise" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" DeleteCommand="DeleteEntreprise" DeleteCommandType="StoredProcedure" InsertCommand="AjoutEntreprise" InsertCommandType="StoredProcedure" SelectCommand="SelectEntreprises" SelectCommandType="StoredProcedure" UpdateCommand="UpdateEntreprise" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id_entreprise" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="ville" Type="String" />
                <asp:Parameter Name="pays" Type="String" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter Name="adresse2" Type="String" />
                <asp:Parameter Name="code_postal" Type="Int32" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="fax" Type="Int32" />
                <asp:Parameter Name="site" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_entreprise" Type="Int32" />
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="ville" Type="String" />
                <asp:Parameter Name="pays" Type="String" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter Name="adresse2" Type="String" />
                <asp:Parameter Name="code_postal" Type="Int32" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="fax" Type="Int32" />
                <asp:Parameter Name="site" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ID="sqlContact" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" 
            DeleteCommand="DeleteContact" DeleteCommandType="StoredProcedure" 
            InsertCommand="AjouterContact" InsertCommandType="StoredProcedure" 
            SelectCommand="GetContactByID" SelectCommandType="StoredProcedure" 
            UpdateCommand="UpdateContacts" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="id_contact" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="prenom" Type="String" />
                <asp:Parameter Name="civilite" Type="String" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="fax" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="fonction" Type="String" />
                <asp:Parameter Name="id_entreprise" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="prenom" Type="String" />
                <asp:Parameter Name="civilite" Type="String" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="fax" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="fonction" Type="String" />
                <asp:Parameter Name="id_entreprise" Type="Int32" />
                <asp:Parameter Name="id_contact" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:Parameter Name="id_entreprise" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        
        
        <asp:SqlDataSource runat="server" ID="SqlEvenement" ConnectionString="<%$ ConnectionStrings:ErpConnectionString %>" DeleteCommand="DeleteEvents" DeleteCommandType="StoredProcedure" InsertCommand="AjouterEvent" InsertCommandType="StoredProcedure" SelectCommand="GetEventByIDContact" SelectCommandType="StoredProcedure" UpdateCommand="UpdateEvents" UpdateCommandType="StoredProcedure">
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
                <asp:Parameter Name="id_utilisateur" Type="Int32" />
                <asp:Parameter Name="id_contact" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="id_contact" Type="Int32" />
            </SelectParameters>
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
                <asp:Parameter Name="id_utilisateur" Type="Int32" />
                <asp:Parameter Name="id_contact" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
