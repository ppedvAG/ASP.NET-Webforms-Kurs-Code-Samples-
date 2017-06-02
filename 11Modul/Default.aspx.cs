using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _11Modul_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }

    public IEnumerable<todo> rptListe_GetData()
    {
        var todoList = new List<todo>();
        if (Cache["todos"] != null)
        {
            todoList = (List<todo>)Cache["todos"];

        }
        else
        {

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

        }
        //Cache.Add("todos", todoList, 
        //    new System.Web.Caching.CacheDependency(Server.MapPath(@"~\app_data\todoitems.txt")),
        //   DateTime.Now.AddMinutes(3),
        //    new TimeSpan(0, 3, 0),
        //    System.Web.Caching.CacheItemPriority.Default,
        //    null);
        Cache["todos"] = todoList;



        return todoList;
    }

}