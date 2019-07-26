using Newtonsoft.Json;
using swasobigua.mypages.Models;
using swasobigua.mypages.Models.Communication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace swasobigua.mypages.Services
{
    public class UserService : BaseService
    {
        //public async Task LoginAsync(string username, string password, Func<User, User> callback)
        //{
        //    var json = JsonConvert.SerializeObject(new { username, password });
        //    var content = new StringContent(json, Encoding.UTF8, "application/json");
        //    var response = await client.PostAsync("/v1/users/login", content);

        //    if (response.IsSuccessStatusCode)
        //    {
        //        var stream = await response.Content.ReadAsStreamAsync();
        //        var serializer = new DataContractJsonSerializer(typeof(User));

        //        var user = serializer.ReadObject(stream) as User;

        //        callback(user);

        //    }
        //}

        public async Task<AsobiguaApiResponse<User>> LoginAsync(string username, string password)
        {
            var json = JsonConvert.SerializeObject(new { username, password });
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            HttpResponseMessage response;

            try
            {
                response = await Client.PostAsync("/v1/users/login", content);
            }
            catch(Exception ex)
            {
                return new AsobiguaApiResponse<User>(System.Net.HttpStatusCode.InternalServerError, ex.Message);
            }

            DataContractJsonSerializer serializer;

            var stream = await response.Content.ReadAsStreamAsync();

            if (response.IsSuccessStatusCode)
            {
                serializer = new DataContractJsonSerializer(typeof(User));

                var user = serializer.ReadObject(stream) as User;

                return new AsobiguaApiResponse<User>(response.StatusCode, user);
            }

            serializer = new DataContractJsonSerializer(typeof(ErrorMessage));
            var result = serializer.ReadObject(stream) as ErrorMessage;

            return new AsobiguaApiResponse<User>(response.StatusCode, result.Message);
        }

        public async Task<AsobiguaApiResponse<User>> CreateUserAsync(string username, string password, string name, string lastname, string email, string usertype)
        {
            var json = JsonConvert.SerializeObject(new { username, password, name, lastname, email, usertype });
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            HttpResponseMessage response;

            try
            {
                response = await Client.PostAsync("/v1/users", content);
            }
            catch (Exception ex)
            {
                return new AsobiguaApiResponse<User>(System.Net.HttpStatusCode.InternalServerError, ex.Message);
            }

            DataContractJsonSerializer serializer;

            var stream = await response.Content.ReadAsStreamAsync();

            if (response.IsSuccessStatusCode)
            {
                serializer = new DataContractJsonSerializer(typeof(User));

                var user = serializer.ReadObject(stream) as User;

                return new AsobiguaApiResponse<User>(response.StatusCode, user);
            }

            serializer = new DataContractJsonSerializer(typeof(ErrorMessage));
            var result = serializer.ReadObject(stream) as ErrorMessage;

            return new AsobiguaApiResponse<User>(response.StatusCode, result.Message);
        }
    }
}