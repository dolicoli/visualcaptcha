using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using VisualCaptcha;

namespace VisualCaptchaSample.ajax
{
    /// <summary>
    /// Summary description for Image
    /// </summary>
    public class Image : IHttpHandler, IRequiresSessionState
    {
        private const string SessionKey = "visualcaptcha";
        public void ProcessRequest(HttpContext context)
        {
            int retina = 0;
            int num = int.Parse(context.Request.RawUrl.Split('/')[3].Split('?')[0].ToString());
            var captcha = (Captcha)context.Session[SessionKey];
            var content = captcha.GetImage(num, retina == 1);
            context.Response.ContentType = "image/png";
            using (System.IO.MemoryStream str = new System.IO.MemoryStream(content.ToArray(), true))
            {
                str.Write(content.ToArray(), 0, content.ToArray().Length);
                Byte[] bytes = str.ToArray();
                context.Response.BinaryWrite(bytes);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}