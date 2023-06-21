import 'package:football_app/models/football_club.dart';
import 'package:football_app/models/todays_match.dart';

class MatchData {
  List<TodaysMatch> club_list = [
    TodaysMatch(
        club1: FootballClub(
            name: "Man City",
            logo:
                "https://pbs.twimg.com/profile_images/1605149215151235078/QlVBaoHu_400x400.jpg"),
        league: "Premier League",
        week: "Week 10",
        club2: FootballClub(
            name: "Palace",
            logo:
                "https://pbs.twimg.com/profile_images/1631927919068037122/bHH3TkIJ_400x400.jpg")),
    TodaysMatch(
      club1: FootballClub(
          name: "Newcastle",
          logo:
              "https://pbs.twimg.com/profile_images/442957317311430656/Z5Uhlef9_400x400.jpeg"),
      club2: FootballClub(
          name: "Chelsea",
          logo:
              "https://upload.wikimedia.org/wikipedia/tr/thumb/2/27/Chelsea_FC_arma.svg/300px-Chelsea_FC_arma.svg.png"),
      league: "Premier League",
      week: "Week 10",
    ),
  ];
}
