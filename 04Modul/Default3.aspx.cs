using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04Modul_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {
       
         File.AppendAllText(Server.MapPath(@"~\app_data\email.txt"),
            email.Text + System.Environment.NewLine);

       

    }
}