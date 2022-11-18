using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }


    protected void OnMenuItemDataBound(object sender, MenuEventArgs e)
    {
        string currentPage = Request.Url.Segments[Request.Url.Segments.Length - 1].Split('.')[0];
        if (e.Item.Text.Equals(currentPage, StringComparison.InvariantCultureIgnoreCase))
        {
            if (e.Item.Parent != null)
            {
                e.Item.Parent.Selected = true;
            }
            else
            {
                e.Item.Selected = true;
            }
        }
    }
    protected void Send_Click(object sender, EventArgs e)
    {
        var dest = TextBoxEmail.Text;
        var Sender = Page.Session["Email"];
        String sujet = TextBoxSubject.Text;
        String b = Request.Form["TextBoxMessage"];

        MailMessage mail = new MailMessage();
        mail.To.Add(dest);
        mail.From = new MailAddress("trabelsijihen99@gmail.com");
        mail.Subject = sujet;
        mail.Body = b;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential("trabelsi99@gmail.com", "jihentrabelsi99");
        smtp.EnableSsl = true;
        smtp.Send(mail);

    }


    public static void SendEmail(int Matricule)
    {
        try
        {
            var fromAddress = new System.Net.Mail.MailAddress("stagecontacte@gmail.com");
            // var fromPassword = "Eppm123*@#";
            var fromPassword = "tfhzpuuvqykqbpku";

            DataClassesDataContext layer = new DataClassesDataContext();
            Utilisateur PD = (from x in layer.Utilisateur
                              where x.id == Matricule
                              select x).SingleOrDefault();

            var toAddress = new System.Net.Mail.MailAddress(PD.Email);

            string subject = "Rappel";
            String Nom = PD.Nom;


            //var body = new HtmlString(string.Format("<table style='font-family:Tahoma;width: 100%;'><tbody><tr><td style='background-color:#990000; color: #FFFFFF; text-decoration: blink; font-size: large; font-family: Arial; text-align: center; font-weight: bold;'>EPPM</td><td style='background-color:#006699; color: #FFFFFF; font-weight: normal; font-size: large; font-family: Arial'>&nbsp;Gestion Contact</td></tr><tr><td></td><td style='font-size: 12px; color: #000000;'>&nbsp;<br />Bonjour<strong style='font-family: Tahoma;'> {0},</strong><br />&nbsp;<br />    Vous avez Rappel&nbsp;<br />Contact&nbsp; &nbsp; &nbsp; &nbsp; : <strong style='font-family: Tahoma;'>{1}</strong><br />    Bénéficiaire&nbsp; :&nbsp;<strong style='font-family: Tahoma;'>{2}</strong><br /><span style='font-family: Tahoma, Geneva, sans-serif;'><span style='white-space: nowrap;'>contact&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style='font-family: Tahoma;'>: <strong>{3}</strong><br /><br />   Pour accéder à la demande, veuillez cliquer sur le lien suivant : <a href='{4}' target='_blank'>{1}</a>    <br />Merci<br />    <br />    </span><div style='font-size:11px;font-weight:bold;'>Gestion&nbsp; de contact,<br />    <a href='http://www.eppm.com.tn'>EPPM</a></div><br /><br /><br /></td></tr><tr><td>&nbsp;</td><td style='color: #000000; font-weight: bold;'>&nbsp;</td></tr></tbody></table>&nbsp;", Nom, "user 2", " user 3", "user 4", "user 5"));

            var body = new HtmlString(string.Format("<table style='font-family: Tahoma; width: 100%;'>< tbody >< tr >< td style = 'background-color: #99ff6e; color: #ffffff; text-decoration: blink; font-size: large; font-family: Arial; text-align: center; font-weight: bold;' > KeepUp </ td >< td style = 'background-color: #accbe9; color: #ffffff; font-weight: normal; font-size: large; font-family: Arial;' > &nbsp; Gestion Contact</ td ></ tr >< tr >< td >< img src = 'Image/contact/keepupOriginal.png' /></ td >< td style = 'font-size: 12px; color: #000000;' > &nbsp;< br /> Bonjour < strong style = 'font-family: Tahoma;' > { 0},</ strong >< br /> &nbsp;< br /> Vous avez Rappel&nbsp;< br /> C²ontact & nbsp; &nbsp; &nbsp; &nbsp; : < strong style = 'font-family: Tahoma;' >{ 1}</ strong >< br /> B & eacute; n & eacute; ficiaire & nbsp; :&nbsp;< strong style = 'font-family: Tahoma;' >{ 2}</ strong >< br />< span style = 'ont-family: Tahoma, Geneva, sans-serif;' >< span style = 'white-space: nowrap;' > contact & nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</ span ></ span >< span style = 'font-family: Tahoma;' >: < strong >{ 3}</ strong >< br />< br /> Pour acc & eacute; der & agrave; la demande, veuillez cliquer sur le lien suivant: < a href = '{4}' target = '_blank' rel = 'noopener' >{ 1}</ a > < br /> Merci < br /> < br /> </ span >< div style = 'font-size: 11px; font-weight: bold;' > Gestion & nbsp; de contact,< br /> < a href = 'http://www.eppm.com.tn' > KeepUp </ a ></ div ></ tr >< tr >< td colspan = '2'style = 'border-top:2px solid; border-top-color:#accbe9; width: 480px; padding-top:12px;  font-family:Arial,sans-serif; color:#9b9b9b; text-align:justify;' ></ td ></ tr ></ tbody ></ table >< p > &nbsp;</ p > ", Nom, "user 2", " user 3", "user 4", "user 5"));

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