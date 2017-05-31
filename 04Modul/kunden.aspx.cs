using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04Modul_kunden : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"];
        switch (id)
        {
            case "1":
                    Label1.Text = "Müllers Büro";
                    break;

            case "2":
                Label1.Text = "Ficher Fische";
                break;
            case "3":
                Label1.Text ="Ottis Fanten";
                break;


            default:
                break;

        }

    }
}