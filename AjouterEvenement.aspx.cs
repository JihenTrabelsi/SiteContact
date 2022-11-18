using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AjouterEvenement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SendEmail(1, "1", "5", "11", "88", "7892");
    }

    protected void callAddEvent_Callback(object source, DevExpress.Web.CallbackEventArgs e)
    {
        //callAddEvent.JSProperties["cp_addEvent"] = "";
        //DataClasses2DataContext Layer = new DataClasses2DataContext();
        //var IDContact = Convert.ToInt32(Request.QueryString["id_contact"]);
        //var Type = cbType.Text;
        //var Objet = tbObjet.Text;
        //var DD = DateTime.Parse(dateDebut.Text);
        //var DF = DateTime.Parse(dateFin.Text);
        //var HD = TimeSpan.Parse(heuredebut.Text);
        //var HF = TimeSpan.Parse(heurefin.Text);
        //var Lieu = tbLieu.Text;
        //var Attribu = GridAttribu.Text;
        //var Description = tbdescription.Text;
        //var periode = dateDebut.Text + " du " + heuredebut.Text + " jusque au " + heurefin.Text ;


        //Layer.AjouterEvent(Type,Objet, DD,DF,HD,HF,Attribu,Description,Lieu, IDContact) ;
        //SendEmail(IDContact,Objet,Type,periode,Lieu,Description);
        //callAddEvent.JSProperties["cp_addEvent"] = "Add";

        var matricules=GridAttribu.GridView.GetSelectedFieldValues("id");
        foreach (int matricule in matricules) {
            callAddEvent.JSProperties["cp_addEvent"] = "";
            DataClasses2DataContext Layer = new DataClasses2DataContext();
            var IDContact = Convert.ToInt32(Request.QueryString["id_contact"]);

            var Type = cbType.Text;
            var Objet = tbObjet.Text;
            var DD = DateTime.Parse(dateDebut.Text);
            var DF = DateTime.Parse(dateFin.Text);
            var HD = TimeSpan.Parse(heuredebut.Text);
            var HF = TimeSpan.Parse(heurefin.Text);
            var Lieu = tbLieu.Text;
            var Attribu = GridAttribu.Text;
            var Description = tbdescription.Text;
            var periode = dateDebut.Text + " du " + heuredebut.Text + " jusque au " + heurefin.Text;


            Layer.AjouterEvent(Type, Objet, DD, DF, HD, HF, Attribu, Description, Lieu, matricule, IDContact);
            SendEmail(matricule, Objet, Type, periode, Lieu, Description);
            callAddEvent.JSProperties["cp_addEvent"] = "Add";
        }
    }


    public static void SendEmail(int id, string objet, string evenement, string periode, string lieu, string description)
    {
        try
        {


            var fromAddress = new System.Net.Mail.MailAddress("stagecontacte@gmail.com");
            var fromPassword = "Eppm123*@#";


            
            DataClassesDataContext layer = new DataClassesDataContext();
            Utilisateur PD = (from x in layer.Utilisateur
                              where x.id == id
                              select x).SingleOrDefault();




            var toAddress = new System.Net.Mail.MailAddress(PD.Email);

            string subject = objet;
            var Nom = PD.Nom;
            //var body = new HtmlString(string.Format("<table style='font - family:Tahoma; width: 100 %; '><tbody><tr><td style='background - color:#990000; color: #FFFFFF; text-decoration: blink; font-size: large; font-family: Arial; text-align: center; font-weight: bold;'>EPPM</td><td style='background-color:#006699; color: #FFFFFF; font-weight: normal; font-size: large; font-family: Arial'>&nbsp;Gestion Contact</td></tr><tr><td></td><td style='font-size: 12px; color: #000000;'>&nbsp;<br />Bonjour<strong style='font-family: Tahoma;'> {0},</strong><br />&nbsp;<br />    Vous avez Rappel&nbsp;<br />Contact&nbsp; &nbsp; &nbsp; &nbsp; : <strong style='font-family: Tahoma;'>{1}</strong><br />    Bénéficiaire&nbsp; :&nbsp;<strong style='font-family: Tahoma;'>{2}</strong><br /><span style='font-family: Tahoma, Geneva, sans-serif;'><span style='white-space: nowrap;'>contact&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style='font-family: Tahoma;'>: <strong>{3}</strong><br /><br />   Pour accéder à la demande, veuillez cliquer sur le lien suivant : <a href='{4}' target='_blank'>{1}</a>    <br />Merci<br />    <br />    </span><div style='font-size:11px;font-weight:bold;'>Gestion&nbsp; de contact,<br />    <a href='http://www.eppm.com.tn'>EPPM</a></div><br /><br /><br /></td></tr><tr><td>&nbsp;</td><td style='color: #000000; font-weight: bold;'>&nbsp;</td></tr></tbody></table>&nbsp;", Nom, "Rappel", objet, periode, lieu, description));
            //var body = new HtmlString(string.Format("<table style='font - family:Tahoma; width: 100 %; '><tbody><tr><td style='background - color:#990000; color: #FFFFFF; text-decoration: blink; font-size: large; font-family: Arial; text-align: center; font-weight: bold;'>EPPM</td><td style='background-color:#006699; color: #FFFFFF; font-weight: normal; font-size: large; font-family: Arial'>&nbsp;Gestion Contact</td></tr><tr><td></td><td style='font-size: 12px; color: #000000;'>&nbsp;<br />Bonjour<strong style='font-family: Tahoma;'> {0},</strong><br />&nbsp;<br />    Vous avez Rappel&nbsp;<br />Contact&nbsp; &nbsp; &nbsp; &nbsp; : <strong style='font-family: Tahoma;'>{1}</strong><br />    Bénéficiaire&nbsp; :&nbsp;<strong style='font-family: Tahoma;'>{2}</strong><br /><span style='font-family: Tahoma, Geneva, sans-serif;'><span style='white-space: nowrap;'>contact&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style='font-family: Tahoma;'>: <strong>{3}</strong><br /><br />   Pour accéder à la demande, veuillez cliquer sur le lien suivant : <a href='{4}' target='_blank'>{1}</a>    <br />Merci<br />    <br />    </span><div style='font-size:11px;font-weight:bold;'>Gestion&nbsp; de contact,<br />    <a href='http://www.eppm.com.tn'>EPPM</a></div><br /><br /><br /></td></tr><tr><td>&nbsp;</td><td style='color: #000000; font-weight: bold;'>&nbsp;</td></tr></tbody></table>&nbsp;", Nom, "Rappel", "user1", "user2", "user3", "user4"));
            var body = "hi";

            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,

                DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new System.Net.NetworkCredential(fromAddress.Address, fromPassword)
            };

            using (var message = new System.Net.Mail.MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body.ToString(),
                IsBodyHtml = true

            })

                smtp.Send(message);
        }
        catch (Exception ex)
        {


        }

    }


}
