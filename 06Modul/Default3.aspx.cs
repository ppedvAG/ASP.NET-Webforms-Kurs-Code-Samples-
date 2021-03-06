﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _06Modul_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void singlebutton_Click(object sender, EventArgs e)
    {

        File.AppendAllText(Server.MapPath(@"~\app_data\todoitems.txt"),
           textinput.Text + System.Environment.NewLine);
        rptListe.DataBind(); //Viewstate Dekativieren verhindert button events

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

    protected void rptListe_ItemCommand(object source, RepeaterCommandEventArgs e)
    {


        var items = File.ReadAllLines(Server.MapPath(@"~\app_data\todoitems.txt"));
        var id= Convert.ToInt32(e.CommandArgument.ToString());
        var neuitems = items.Where(x => x != items[id]);
        File.WriteAllLines(Server.MapPath(@"~\app_data\todoitems.txt"),
         neuitems);
        rptListe.DataBind();

    }
}