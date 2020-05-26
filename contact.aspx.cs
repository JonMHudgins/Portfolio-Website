using System;
using System.Net.Mail;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        MailMessage mailMessage = new MailMessage();
        mailMessage.From = new MailAddress("jhudgins6768@jonhudgins.com");
        mailMessage.To.Add(new MailAddress("jon.m.hudgins@gmail.com"));
        mailMessage.Subject = subject.Text;
        mailMessage.Body = "<b>Sender Name: </b>" + name.Text + "<br/>"
            + "<b>Sender Email: </b>" + email.Text + "<br/>"
            + "<b>Message: </b>" + message.Text;
        mailMessage.IsBodyHtml = true;

        SmtpClient smtpClient = new SmtpClient("mail.jonhudgins.com", 25);
        smtpClient.Credentials = new System.Net.NetworkCredential("jhudgins6768@jonhudgins.com", "yeQA78ed");
        bool mailSent = false;
        try
        {
            smtpClient.Send(mailMessage);
            mailSent = true;
        }
        catch(Exception)
        {
            mailSent = false;
        }

        if(mailSent)
        {
            contactLabel.InnerText = "Your message has been sent!";
            contactLabel.Visible = true;
        }
        else
        {
            contactLabel.InnerText = "An error occurred while sending your message.\nPlease try again later.";
            contactLabel.Visible = true;
        }

        fgName.Visible = false;
        fgEmail.Visible = false;
        fgSubject.Visible = false;
        fgMessage.Visible = false;
        submitButton.Visible = false;
    }
}