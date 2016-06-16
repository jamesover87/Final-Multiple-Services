using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IShowTrackerService" in both code and config file together.
[ServiceContract]
public interface IShowTrackerService
{
    [OperationContract]
    List<string> GetVenues();

    [OperationContract]
    List<Artist> GetArtists();

    [OperationContract]
    List<string> GetArtistsOld();

    [OperationContract]
    List<string> GetShows();

    [OperationContract]
    List<VenueShow> GetVenueShows(string venueName);

    [OperationContract]
    List<ArtistShow> GetArtistShows(string artistName);

    [OperationContract]
    List<string> GetShowsForFanArtists(int fanKey);

}

    [DataContract]
    public class VenueShow
    {
        [DataMember]
        public string ShowName { set; get; }

        [DataMember]
        public DateTime ShowDate { set; get; }

        [DataMember]
        public TimeSpan ShowTime { set; get; }
        
        [DataMember]
        public string VenueName { set; get; }
    }

[DataContract]
public class ArtistShow
{
    [DataMember]
    public string ShowName { set; get; }

    [DataMember]
    public DateTime ShowDate { set; get; }

    [DataMember]
    public TimeSpan ShowTime { set; get; }

    [DataMember]
    public string VenueName { set; get; }
}

