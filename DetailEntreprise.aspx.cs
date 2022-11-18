using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetailEntreprise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataClassesDataContext Layer = new DataClassesDataContext();
        var IDSociete = Convert.ToInt32(Request.QueryString["id_entreperise"]);

        //var req = (from la in Layer.Entreprise
        //               where la.id_entreprise == IDSociete
        //               select la
        //       ).ToList();

        var req = (Layer.GetEntreprisesByID(IDSociete)).ToList();

        if(req.Count() !=0)
        {
        tbNomEntreprise.Text = req[0].nom;
        tbSite.Text = req[0].site;
        tbVille.Text = req[0].ville ;
        tbPays.Text = req[0].pays ;
        tbTelephone.Value = req[0].telephone ;
        tbFax.Value = req[0].fax ;
        tbAdresse.Text = req[0].adresse;
        tbAdresse2.Text = req[0].adresse2;
        tbCodePostal.Value = req[0].code_postal ;
        }
    }
}