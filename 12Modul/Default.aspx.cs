using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _12Modul_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "application/vnd.ms-excel";


    }

    public IEnumerable<todo> rptListe_GetData()
    {
        var todoList = new List<todo>();
        try
        {
            var items = File.ReadAllLines(Server.MapPath(@"~\app_data\todoitems.txt"));
            int id = 0;
            foreach (string s in items)
            {
                todoList.Add(new todo() { ID = id, Aufgabe = s });
                id++;

            }
        }
        catch
        {

        }

        return todoList;
    }
}