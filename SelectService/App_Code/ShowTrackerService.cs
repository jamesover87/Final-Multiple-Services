using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ShowTrackerService" in code, svc and config file together.
public class ShowTrackerService : IShowTrackerService
{
    ShowTrackerEntities db = new ShowTrackerEntities();
    public List<string> GetVenues()
    {
        var ven = from v in db.Venues
                  orderby v.VenueName
                  select new { v.VenueName };
        List<string> venues = new List<string>();
        foreach (var vn in ven)
        {
            venues.Add(vn.VenueName.ToString());
        }
        return venues;
    }

    public List<string> GetArtistsOld()
    {
        var art = from a in db.Artists
                  orderby a.ArtistName
                  select new { a.ArtistName };
        List<string> artists = new List<string>();
        foreach (var ar in art)
        {
            artists.Add(ar.ArtistName.ToString());
        }
        return artists;
    }

    public List<Artist> GetArtists()
    {
        var art = from a in db.Artists
                  orderby a.ArtistName
                  select new { a.ArtistName, a.ArtistKey };
        List<Artist> artists = new List<Artist>();
        foreach (var ar in art)
        {
            Artist a = new Artist();
            a.ArtistName = ar.ArtistName;
            a.ArtistKey = ar.ArtistKey;
            artists.Add(a);
        }
        return artists;
    }

    public List<string> GetShows()
    {
        var show = from s in db.Shows
                  orderby s.ShowName
                  select new { s.ShowName };
        List<string> shows = new List<string>();
        foreach (var sh in show)
        {
            shows.Add(sh.ShowName.ToString());
        }
        return shows;
    }

    public List<VenueShow> GetVenueShows(string venueName)
    {
        var show = from s in db.Shows
                 
                   orderby s.ShowName
                   where s.Venue.VenueName.Equals(venueName)
                   select new
                   {
                       s.ShowName,
                       s.Venue.VenueName,
                       s.ShowDate,
                       s.ShowTime
                   };
        List<VenueShow> shows = new List<VenueShow>();

        foreach (var shw in show)
        {
            VenueShow vs = new VenueShow();
            vs.ShowName = shw.ShowName;
            vs.VenueName = shw.VenueName;
            vs.ShowDate = shw.ShowDate;
            vs.ShowTime = shw.ShowTime;
            shows.Add(vs);
        }
        return shows;
    }

    public List<ArtistShow> GetArtistShows(string artistName)
    {
        var show = from s in db.Shows
                   from sd in s.ShowDetails
                   orderby s.ShowName
                   where sd.Artist.ArtistName.Equals(artistName)
                   select new
                   {
                       s.ShowName,
                       s.Venue.VenueName,
                       s.ShowDate,
                       s.ShowTime
                   };
        List<ArtistShow> shows = new List<ArtistShow>();

        foreach (var shw in show)
        {
            ArtistShow arts = new ArtistShow();
            arts.ShowName = shw.ShowName;
            arts.VenueName = shw.VenueName;
            arts.ShowDate = shw.ShowDate;
            arts.ShowTime = shw.ShowTime;
            shows.Add(arts);
        }
        return shows;
    }

    public List<string> GetShowsForFanArtists(int fanKey)
    {
        //get the fan
        Fan myFan = (from f in db.Fans
                     where f.FanKey == fanKey
                     select f).First();

        List<string> shows = new List<string>();

        //this loop within a loop is very inefficient
        foreach (Artist a in myFan.Artists)
        {
            //get all the shows for the fan
            var shws = from s in db.Shows
                       from sd in s.ShowDetails
                       where sd.ArtistKey == a.ArtistKey
                       select new
                       {
                           s.ShowName,
                           s.ShowTime,
                           s.ShowDate,
                           s.ShowTicketInfo,
                           s.Venue.VenueName,
                           sd.Artist.ArtistName
                       };

            //loop through the shows and write them to 
            //ShowInfo objects then add those objects
            //to the list
            foreach (var sh in shws)
            {
                ArtistShow info = new ArtistShow();
                info.ShowName = sh.ShowName;
                info.ShowDate = sh.ShowDate;
                info.ShowTime = sh.ShowTime;
                info.VenueName = sh.VenueName;

                shows.Add(info.ShowName.ToString());
                shows.Add(info.ShowDate.ToString());
                shows.Add(info.ShowTime.ToString());
                shows.Add(info.VenueName.ToString());

            }


        }
        return shows;

    }

}
