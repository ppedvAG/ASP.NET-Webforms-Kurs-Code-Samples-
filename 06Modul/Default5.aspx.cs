using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _06Modul_Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IEnumerable<Customers> rptListe_GetData()
    {
        var ef = new mymodel();
        return ef.Customers;
    }
}