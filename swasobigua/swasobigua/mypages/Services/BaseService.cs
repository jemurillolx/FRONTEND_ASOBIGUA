using System;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;

namespace swasobigua.mypages.Services
{
    public class BaseService
    {
        protected static HttpClient Client { get; private set; }
        protected static readonly string baseUrl = "https://mocktesisasobiguaapi.azurewebsites.net";

        public BaseService()
        {
            if (Client==null)
            {
                Client = new HttpClient();
                Client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                Client.BaseAddress = new Uri(baseUrl);
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11;
            }
            //client.Timeout = new TimeSpan(0, 0, 3);
        }
    }
}