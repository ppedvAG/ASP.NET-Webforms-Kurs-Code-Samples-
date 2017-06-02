<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        var par = context.Request.QueryString["img"];
        context.Response.ContentType = "text/plain";
        context.Response.Write(par.ToUpper());

    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}