using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

namespace swasobigua.mypages.Models.Communication
{
    public class AsobiguaApiResponse<T> where T : class
    {
        public HttpStatusCode HttpResponseStatusCode { get; }
        public T Value { get; }
        public string Message { get; }

        public AsobiguaApiResponse(HttpStatusCode httpResponseStatusCode, T value)
        {
            HttpResponseStatusCode = httpResponseStatusCode;
            Value = value;
        }

        public AsobiguaApiResponse(HttpStatusCode httpResponseStatusCode, string message)
        {
            HttpResponseStatusCode = httpResponseStatusCode;
            Message = message;
        }
    }
}