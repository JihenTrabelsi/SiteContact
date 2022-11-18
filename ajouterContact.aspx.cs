using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ajouterContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void callAddContact_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        callAddContact.JSProperties["cp_addContact"] = "";
        DataClasses3DataContext Layer = new DataClasses3DataContext();
        var IDSociete = Convert.ToInt32(Request.QueryString["id_entreprise"]);
        var Civilite = cbCivilite.Text;
        var Nom = tbNom.Text;
        var Prenom = tbPrenom.Text;
        var Telephone = Int32.Parse(tbTelephone.Text);
        var Fax = Int32.Parse(tbFax.Text);
        var Email = tbEmail.Text;
        var Fonction = tbFonction.Text;

        Layer.AjouterContact(Nom, Prenom, Civilite, Telephone, Fax, Email, Fonction, IDSociete);
        callAddContact.JSProperties["cp_addContact"] = "Add";
    }
}