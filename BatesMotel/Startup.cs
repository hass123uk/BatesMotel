using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BatesMotel.Startup))]
namespace BatesMotel
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
