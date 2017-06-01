using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Zusammenfassungsbeschreibung für kunden
/// </summary>
public class kunden
{
    public kunden()
    {
        //
        //TODO: Hier Konstruktorlogik hinzufügen
        //
    }
    public string CustomerID { get; set; }
    public string CompanyName { get; set; }
    public string ContactName { get; set; }
    public int AnzOrders { get; set; }
}