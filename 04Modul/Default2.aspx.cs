using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04Modul_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var text1 = Request.Form["text1"];
        Response.Write(Request.LogonUserIdentity.User.Value);

      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Write(sender.ToString());
       
    }
}