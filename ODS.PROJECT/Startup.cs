using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ODS.PROJECT.Startup))]
namespace ODS.PROJECT
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
