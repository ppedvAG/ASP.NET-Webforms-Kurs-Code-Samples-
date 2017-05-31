using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KursFrankfurt.Startup))]
namespace KursFrankfurt
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
