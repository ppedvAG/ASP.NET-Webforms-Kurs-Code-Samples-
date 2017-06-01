using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04Modul_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
            {
            //Button1.Enabled = false;
        }
     
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        var mc = new SmtpClient();
        mc.Send("hannesp@ppedv.de", TextBox1.Text, "Hallo Welt", "servus");

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}