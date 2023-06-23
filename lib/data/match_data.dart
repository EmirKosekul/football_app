// ignore_for_file: non_constant_identifier_names

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
                "https://e7.pngegg.com/pngimages/863/499/png-clipart-crystal-palace-f-c-premier-league-selhurst-park-fulham-f-c-crystal-palace-l-f-c-premier-league-logo-football-team-thumbnail.png")),
    TodaysMatch(
      club1: FootballClub(
          name: "Newcastle",
          logo:
              "https://logodownload.org/wp-content/uploads/2019/10/newcastle-united-logo-1.png"),
      club2: FootballClub(
          name: "Chelsea",
          logo:
              "https://upload.wikimedia.org/wikipedia/tr/thumb/2/27/Chelsea_FC_arma.svg/300px-Chelsea_FC_arma.svg.png"),
      league: "Premier League",
      week: "Week 10",
    ),
    TodaysMatch(
      club1: FootballClub(
          name: "Liverpool",
          logo:
              "https://logoeps.com/wp-content/uploads/2011/08/liverpool-logo-vector.png"),
      club2: FootballClub(
          name: "Man Utd",
          logo:
              "https://freepngimg.com/download/manchester_united_logo/1-2-manchester-united-logo-png.png"),
      league: "Premier League",
      week: "Week 10",
    ),
    TodaysMatch(
      club1: FootballClub(
          name: "Burnley    ",
          logo:
              "https://logodownload.org/wp-content/uploads/2019/10/burnley-logo-3.png"),
      club2: FootballClub(
          name: "Brenford",
          logo:
              "https://logodownload.org/wp-content/uploads/2022/09/brentford-fc-logo-1.png"),
      league: "Premier League",
      week: "Week 10",
    ),
    TodaysMatch(
      club1: FootballClub(
          name: "Leicester",
          logo:
              "https://upload.wikimedia.org/wikipedia/hif/a/ab/Leicester_City_crest.png"),
      club2: FootballClub(
          name: "Arsenal",
          logo:
              "https://upload.wikimedia.org/wikipedia/tr/9/92/Arsenal_Football_Club.png"),
      league: "Premier League",
      week: "Week 10",
    ),
  ];
}
