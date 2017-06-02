using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

/// <summary>
/// Zusammenfassungsbeschreibung für WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Wenn der Aufruf dieses Webdiensts aus einem Skript zulässig sein soll, heben Sie mithilfe von ASP.NET AJAX die Kommentarmarkierung für die folgende Zeile auf. 
 [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Heben Sie die Kommentarmarkierung für die folgende Zeile auf, wenn Designkomponenten verwendet werden 
        //InitializeComponent(); 
    }

    [WebMethod]
      public DateTime getDatum()
    {
        return DateTime.Now;
    }
    [WebMethod]
   
    public IEnumerable<Customers> getCustomers()
    {
        var ef = new mymodel();
        var query = from c in ef.Customers
                    select c;


        return query; //serialisierungsproblem
    }

}
