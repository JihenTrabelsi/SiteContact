using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Conta.Startup))]
namespace Conta
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
