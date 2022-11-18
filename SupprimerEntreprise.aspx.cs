using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupprimerEntreprise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void callDelete_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        callDelete.JSProperties["cp_Exist"] = "";
        DataClassesDataContext Layer = new DataClassesDataContext();
        var IDSociete = Convert.ToInt32(Request.QueryString["id_entreprise"]);

        var req = (Layer.GetEntreprisesByID(IDSociete)).ToList();

        if (req.Count != 0)
        {
            Layer.DeleteEntreprise(IDSociete);
            callDelete.JSProperties["cp_Exist"] = "Supp";
        }
    }
}