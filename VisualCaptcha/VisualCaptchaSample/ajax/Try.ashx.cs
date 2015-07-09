using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using VisualCaptcha;

namespace VisualCaptchaSample.ajax
{
    /// <summary>
    /// Summary description for Try
    /// </summary>
    public class Try : IHttpHandler, IRequiresSessionState
    {
        private const string SessionKey = "visualcaptcha";
        public void ProcessRequest(HttpContext context)
        {
            var captcha = (Captcha)context.Session[SessionKey];

            var success = captcha.ValidateAnswer(context.Request.Form.GetValues("value")[0]);
            var message = "Your answer was " + (success ? "valid." : "invalid.");
            Json json = new Json()
            {
                success = success,
                message = message
            };
            context.Response.ContentType = "application/json; charset=utf-8";
            context.Response.Write(JsonConvert.SerializeObject(json));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public class Json
        {
            public bool success { get; set; }
            public string message { get; set; }
        }
    }
}