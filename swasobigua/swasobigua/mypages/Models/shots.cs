using System;
using System.Runtime.Serialization;
using Newtonsoft.Json;
namespace swasobigua.mypages.Models.Communication
{
    [DataContract]
    public class shots
    {
        [DataMember(Name = "id")]
        public long Id { get; set; }

        [DataMember(Name = "timeStamp")]
        public string TimeStamp { get; set; }

        [DataMember(Name = "trainer")]
        public trainer Trainer { get; set; }

        [DataMember(Name = "player")]
        public player Player { get; set; }

       
    }
}