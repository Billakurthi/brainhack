using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(brainHack.Startup))]
namespace brainHack
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
