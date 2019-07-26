using System;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace swasobigua.mypages.Models
{
    [DataContract]
    public class xyzShots
    {
        [DataMember(Name = "id")]
        public long Id { get; set; }

        [DataMember(Name = "x")]
        public string X { get; set; }

        [DataMember(Name = "y")]
        public string Y { get; set; }

        [DataMember(Name = "z")]
        public string Z { get; set; }

        [DataMember(Name = "timeStamp")]
        public string TimeStamp { get; set; }

        [DataMember(Name = "xyzShotPosition")]
        public string XYZShotPosition { get; set; }

    }
}