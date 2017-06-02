using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Zusammenfassungsbeschreibung für hannesModule
/// </summary>
public class hannesModule:IHttpModule
{
    public hannesModule()
    {
        //
        //TODO: Hier Konstruktorlogik hinzufügen
        //
    }

    public void Dispose()
    {
        throw new NotImplementedException();
    }

    public void Init(HttpApplication context)
    {
        context.Response.ContentType = "text/plain";
        context.Response.Write("(c) pppedv");
    }
}