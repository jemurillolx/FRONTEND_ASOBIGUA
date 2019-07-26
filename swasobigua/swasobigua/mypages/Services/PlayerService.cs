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
    public class PlayerService : BaseService
    {
        public async Task<AsobiguaApiResponse<List<User>>> GetAllPlayersAsync(string username)
        {
            //var json = JsonConvert.SerializeObject(new { username, password, name, lastname, email, usertype });
            //var content = new StringContent(json, Encoding.UTF8, "application/json");
            //var content2 = new StringContent(null, Encoding.UTF8, "application/json");
            HttpResponseMessage response;

            try
            {
                response = await Client.GetAsync("/v1/logins/players/" + username/*, content2*/);
            }
            catch (Exception ex)
            {
                return new AsobiguaApiResponse<List<User>>(System.Net.HttpStatusCode.InternalServerError, ex.Message);
            }

            DataContractJsonSerializer serializer;

            var stream = await response.Content.ReadAsStreamAsync();

            if (response.IsSuccessStatusCode)
            {
                serializer = new DataContractJsonSerializer(typeof(List<User>));
               // List<User> users;
                //var user 
                 var users   = serializer.ReadObject(stream) as List<User>;

                return new AsobiguaApiResponse<List<User>>(response.StatusCode, users);
            }

            serializer = new DataContractJsonSerializer(typeof(ErrorMessage));
            var result = serializer.ReadObject(stream) as ErrorMessage;

            return new AsobiguaApiResponse<List<User>>(response.StatusCode, result.Message);
        }


        public async Task<AsobiguaApiResponse<List<shots>>> GetAllShotsByPlayerAsync(string playeruser)
        {
            //var json = JsonConvert.SerializeObject(new { username, password, name, lastname, email, usertype });
            //var content = new StringContent(json, Encoding.UTF8, "application/json");
            //var content2 = new StringContent(null, Encoding.UTF8, "application/json");
            HttpResponseMessage response;

            try
            {
                response = await Client.GetAsync("/v1/shots/player/" + playeruser/*, content2*/);
            }
            catch (Exception ex)
            {
                return new AsobiguaApiResponse<List<shots>>(System.Net.HttpStatusCode.InternalServerError, ex.Message);
            }

            DataContractJsonSerializer serializer;

            var stream = await response.Content.ReadAsStreamAsync();

            if (response.IsSuccessStatusCode)
            {
                serializer = new DataContractJsonSerializer(typeof(List<shots>));
                // List<User> users;
                //var user 
                var shots = serializer.ReadObject(stream) as List<shots>;

                return new AsobiguaApiResponse<List<shots>>(response.StatusCode, shots);
            }

            serializer = new DataContractJsonSerializer(typeof(ErrorMessage));
            var result = serializer.ReadObject(stream) as ErrorMessage;

            return new AsobiguaApiResponse<List<shots>>(response.StatusCode, result.Message);
        }
        public async Task<AsobiguaApiResponse<shotdata>> GetAllDataShotByPlayerAsync(string idshot)
        {
            HttpResponseMessage response;

            try
            {
                response = await Client.GetAsync("/v1/shots/" + idshot/*, content2*/);
            }
            catch (Exception ex)
            {
                return new AsobiguaApiResponse<shotdata>(System.Net.HttpStatusCode.InternalServerError, ex.Message);
            }

            DataContractJsonSerializer serializer;

            var stream = await response.Content.ReadAsStreamAsync();

            if (response.IsSuccessStatusCode)
            {
                serializer = new DataContractJsonSerializer(typeof(shotdata));

                var DataShot = serializer.ReadObject(stream) as shotdata;

                return new AsobiguaApiResponse<shotdata>(response.StatusCode, DataShot);
            }

            serializer = new DataContractJsonSerializer(typeof(ErrorMessage));
            var result = serializer.ReadObject(stream) as ErrorMessage;

            return new AsobiguaApiResponse<shotdata>(response.StatusCode, result.Message);
        }
    }
}