using System;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace swasobigua.mypages
{
    [DataContract]
    public class User
    {
        [DataMember(Name = "id")]
        public long Id { get; set; }

        [DataMember(Name = "name")]
        public string Name { get; set; }

        [DataMember(Name = "lastName")]
        public string Lastname { get; set; }

        [DataMember(Name = "email")]
        public string Email { get; set; }

        [DataMember(Name = "username")]
        public string Username { get; set; }

       [DataMember(Name = "userType")]
        public string UserType { get; set; }
    }
}