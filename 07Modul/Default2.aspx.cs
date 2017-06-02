using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _07Modul_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public mymodel ef = new mymodel();


    // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
    // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
    public Customers FormView1_GetItem([FriendlyUrlSegments(0)] string ID)
    {
        return ef.Customers.Find(ID);
    }

    // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
    public void FormView1_UpdateItem(String CustomerID)
    {
        Customers item = null;
        // Element hier laden, z. B. item = MyDataLayer.Find(id);
        item = ef.Customers.Find(CustomerID);
        if (item == null)
        {
            // Das Element wurde nicht gefunden.
            ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", CustomerID));
            return;
        }
        TryUpdateModel(item);
        if (ModelState.IsValid)
        {
            // Änderungen hier speichern, z. B. MyDataLayer.SaveChanges();
            ef.SaveChanges();
        }
    }

    public void FormView1_InsertItem()
    {
        var item = new Customers();
        TryUpdateModel(item);
        if (ModelState.IsValid)
        {
            // Save changes here

        }
    }

    // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
    public void FormView1_DeleteItem(int id)
    {

    }
}