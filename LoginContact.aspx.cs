using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void Sign_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("SignUp.aspx");
    }

    protected void loginButton_Click(object sender, EventArgs e)
    {


        var Passw = Textmdp.Text;
        var Email = Textlogin.Text;
        DataClassesDataContext Layer = new DataClassesDataContext();



        var req = (from la in Layer.Utilisateur
                   where la.Email == Email & la.Password == Passw
                   select la
           ).ToList();


        if (req.Count() == 1)
        {

           Page.Session["Email"] = req[0].Email;
            Page.Session["Nom"] = req[0].Nom ;
            Page.Response.Redirect("Default.aspx");


        }
        else
        {
            Page.Response.Redirect("LoginContact.aspx");
            Msg.Text = "Adresse mail ou mot de passe incorrect";
        }


    }
}