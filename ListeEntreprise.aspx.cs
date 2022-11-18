using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListeEntreprise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gridEntreprise_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        gridEntreprise.DataBind();
    }


    protected void gridContact_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        var idEntreprise = e.Parameters;
        sqlContact.SelectParameters["id_entreprise"].DefaultValue = idEntreprise;
        gridContact.DataBind();
        
    }

    protected void gridEvenement_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
    {
        var idContact = e.Parameters;
        SqlEvenement.SelectParameters["id_contact"].DefaultValue = idContact;
        gridEvenement.DataBind();
    }
}
