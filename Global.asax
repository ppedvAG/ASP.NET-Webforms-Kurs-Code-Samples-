<%@ Application Language="C#" %>
<%@ Import Namespace="KursFrankfurt" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
       RouteConfig.RegisterRoutes(RouteTable.Routes);
       


        BundleConfig.RegisterBundles(BundleTable.Bundles);
        Application["users"] = 0;
    }
    void Application_End(object sender, EventArgs e)
    {
    }

    void Session_Start(object sender, EventArgs e)
    {
      Application["users"]=(int)Application["users"]+1;
    }
     void Session_End(object sender, EventArgs e)
    {
        Application["users"]=(int)Application["users"]-1;
    }

</script>
