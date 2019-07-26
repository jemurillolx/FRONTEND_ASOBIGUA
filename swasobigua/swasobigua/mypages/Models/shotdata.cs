using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;
namespace swasobigua.mypages.Models
{
    [DataContract]
    public class shotdata
    {
        [DataMember(Name = "id")]
        public long Id { get; set; }

        [DataMember(Name = "backstrokePause")]
        public string BackstrokePause { get; set; }

        [DataMember(Name = "shotInterval")]
        public string ShotInterval { get; set; }

        [DataMember(Name = "jab")]
        public string Jab { get; set; }

        [DataMember(Name = "followThrough")]
        public string FollowThrough { get; set; }

        [DataMember(Name = "tipSteer")]
        public string TipSteer { get; set; }

        [DataMember(Name = "straightness")]
        public string Straightness { get; set; }

        [DataMember(Name = "finesse")]
        public string Finesse { get; set; }

        [DataMember(Name = "finish")]
        public string Finish { get; set; }

        [DataMember(Name = "timeStamp")]
        public string TimeStamp { get; set; }

        [DataMember(Name = "trainer")]
        public trainer Trainer { get; set; }

        [DataMember(Name = "player")]
        public player Player { get; set; }

        [DataMember(Name = "xyzShots")]
        public List<xyzShots> XyzShots { get; set; }

    }
}