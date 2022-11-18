using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AjouterEntreprise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void callAdd_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        callAdd.JSProperties["cp_add"] = "";
        DataClassesDataContext Layer = new DataClassesDataContext();

        var Nomsoc = tbNomEntreprise.Text;
        var Site = tbSite.Text;
        var Ville = tbVille.Text;
        var Pays = tbPays.Text;
        var Telephone = Int32.Parse(tbTelephone.Text);
        var Fax = Int32.Parse(tbFax.Text);
        var Adresse = tbAdresse.Text;
        var Adresse2 = tbAdresse2.Text;
        var CodePostal = Int32.Parse(tbCodePostal.Text);

        Layer.AjoutEntreprise(Nomsoc, Ville, Pays, Adresse, Adresse2, CodePostal, Telephone, Fax, Site);
        callAdd.JSProperties["cp_add"] = "Add";
    }
}