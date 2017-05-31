using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04Modul_Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["datum"]!=null)
        {
            Label1.Text = Request.Cookies["datum"].Value;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //kurze Variante
        Response.Cookies["datum"].Value = 
            DateTime.Now.ToLongTimeString();
        Response.Cookies["datum"].Expires =
            DateTime.Now.AddSeconds(50);

        // Variante2
        var cookie = new HttpCookie("Person");
        cookie.Value = "Hannes";
        cookie.Expires = DateTime.Now.AddSeconds(60);
        Response.Cookies.Add(cookie);

    }
}