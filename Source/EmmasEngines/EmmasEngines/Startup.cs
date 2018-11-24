using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;

[assembly: OwinStartup(typeof(EmmasEngines.Startup))]

namespace EmmasEngines
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                CookieName = "EngineCookie",
                LoginPath = new PathString("/Login"),
                LogoutPath = new PathString("/Login"),
                ExpireTimeSpan = TimeSpan.FromMinutes(5)
            });
        }
    }
}
