using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _12Modul_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod()]
    public static string getData()
    {
        string ret;
        var items = File.ReadAllLines(HttpContext.Current.Server.MapPath(@"~\app_data\todoitems.txt"));
        int id = 0;
        ret = "<table>";
        foreach (string s in items)
        {
            ret += "<tr>";
            ret += "<td>";
            ret += id.ToString();

            ret += "</td>";
            ret += "<td>";
            ret += s;

            ret += "</td>";


            id++;
            ret += "</tr>";
        }

        ret += "</table>";
        return ret;
    }
}

