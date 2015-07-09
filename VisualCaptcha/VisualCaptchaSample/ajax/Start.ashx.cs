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
    /// Summary description for Start
    /// </summary>
    public class Start : IHttpHandler, IRequiresSessionState
    {
        private const string SessionKey = "visualcaptcha";
        public void ProcessRequest(HttpContext context)
        {
            int numberOfImages = int.Parse(context.Request.RawUrl.Split('/')[3].Split('?')[0].ToString());
            var captcha = new Captcha(numberOfImages);
            context.Session[SessionKey] = captcha;

            var frontEndData = captcha.GetFrontEndData();

            Json json = new Json()
            {
                values = frontEndData.Values,
                imageName = frontEndData.ImageName,
                imageFieldName = frontEndData.ImageFieldName,
                audioFieldName = frontEndData.AudioFieldName
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
            public List<string> values { get; set; }
            public string imageName { get; set; }
            public string imageFieldName { get; set; }
            public string audioFieldName { get; set; }
        }
    }
}