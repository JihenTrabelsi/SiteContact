using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AnnulerButton_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("LoginContact.aspx");
    }

    protected void SignUpButton_Click(object sender, EventArgs e)
    {

        var Nom = Textusername.Text;
        var Email = Textadresse.Text;
        var Passw = Textmdp.Text;

        DataClassesDataContext Layer = new DataClassesDataContext();

        var req = (from la in Layer.Utilisateur
                   where la.Email == Textadresse.Text
                   select la
           ).ToList();


        if (req.Count() == 0)
        {

            Utilisateur user = new Utilisateur();
            user.Nom = Nom;
            user.Email = Email;
            user.Password = Passw;

            Layer.Utilisateur.InsertOnSubmit(user);
            Layer.SubmitChanges();

            Page.Session["Email"] = Email;
            Page.Session["Nom"] = Nom;
            Page.Response.Redirect("Default.aspx");


        }
        else
        {
            Page.Response.Redirect("SignUp.aspx");
            Msg.Text = "Adresse mail existe déjà !";
        }


    }
}