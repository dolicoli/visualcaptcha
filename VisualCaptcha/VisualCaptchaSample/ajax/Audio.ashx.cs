using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using VisualCaptcha;

namespace VisualCaptchaSample.ajax
{
    /// <summary>
    /// Summary description for Audio
    /// </summary>
    public class Audio : IHttpHandler, IRequiresSessionState
    {
        private const string SessionKey = "visualcaptcha";
        public void ProcessRequest(HttpContext context)
        {
            var captcha = (Captcha)context.Session[SessionKey];
            var content = captcha.GetAudio("mp3");
            context.Response.ContentType = "audio/mpeg";
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