using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifierEntreprise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) {

        DataClassesDataContext Layer = new DataClassesDataContext();

        var IDSociete = Convert.ToInt32(Request.QueryString["id_entreperise"]);

        var req = (Layer.GetEntreprisesByID(IDSociete)).ToList();

      

        if (req.Count() != 0)
        {
            tbNomEntreprise.Text = req[0].nom;
            tbSite.Text = req[0].site;
            tbVille.Text = req[0].ville;
            tbPays.Text = req[0].pays;
            tbTelephone.Value = req[0].telephone;
            tbFax.Value = req[0].fax;
            tbAdresse.Text = req[0].adresse;
            tbAdresse2.Text = req[0].adresse2;
            tbCodePostal.Value = req[0].code_postal;

            }
        }
    }



    protected void callUpdate_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {

        callUpdate.JSProperties["cp_Update"] = "";


        DataClassesDataContext Layer = new DataClassesDataContext();

        var IDSociete = Convert.ToInt32(Request.QueryString["id_entreperise"]);

        var Nomsoc = tbNomEntreprise.Text;
        var Site = tbSite.Text;
        var Ville = tbVille.Text;
        var Pays = tbPays.Text;
        var Telephone = Int32.Parse(tbTelephone.Text);
        var Fax = Int32.Parse(tbFax.Text);
        var Adresse = tbAdresse.Text;
        var Adresse2 = tbAdresse2.Text;
        var CodePostal = Int32.Parse(tbCodePostal.Text);



        var req = (Layer.GetEntreprisesByID(IDSociete)).ToList();

        if (req.Count() != 0)
        {
            Layer.UpdateEntreprise(IDSociete, Nomsoc, Ville, Pays, Adresse, Adresse2, CodePostal, Telephone, Fax, Site);
            callUpdate.JSProperties["cp_Update"] = "Update";

        }
    }
}