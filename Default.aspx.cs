using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var Email = Page.Session["Email"];
        var Nom = Page.Session["Nom"];


        if (Email == null)
        {

            Page.Response.Redirect("LoginContact.aspx");

        }
        else
        {
            TxtNom.Text = Nom.ToString();
            //LoginStatus1
        }


    }


    protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
    {


    }

    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
       // FormsAuthentication.SignOut();
    }

}