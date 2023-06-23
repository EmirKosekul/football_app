import 'package:football_app/models/football_club.dart';
import 'package:football_app/models/live_match_stats.dart';
import 'package:football_app/models/match_stats.dart';

class LiveMatchData{
  List<LiveMatchStats> club_list = [
    LiveMatchStats(
        club1: FootballClub(
            name: "Man City",
            logo:
                "https://pbs.twimg.com/profile_images/1605149215151235078/QlVBaoHu_400x400.jpg"),
        league: "Premier League",
        week: "Week 10",
        club1_stats: MatchStats(shots_on_goal: 2, shots: 4, possesion: 70,yellow_cards: 2, corner_kicks: 1, crosses: 2, goalkeeper_saves: 3, goal_kicks: 3),
        club2_stats: MatchStats(shots_on_goal: 1, shots: 2, possesion: 30,yellow_cards: 1, corner_kicks: 3, crosses: 4, goalkeeper_saves: 1, goal_kicks: 5),
        club2: FootballClub(
            name: "Palace",
            logo:
                "https://e7.pngegg.com/pngimages/863/499/png-clipart-crystal-palace-f-c-premier-league-selhurst-park-fulham-f-c-crystal-palace-l-f-c-premier-league-logo-football-team-thumbnail.png"),
        stadium_name: "Etihad Stadium"),
    LiveMatchStats(
      club1: FootballClub(
          name: "Newcastle",
          logo:
              "https://logodownload.org/wp-content/uploads/2019/10/newcastle-united-logo-1.png"),
      club2: FootballClub(
          name: "Chelsea",
          logo:
              "https://upload.wikimedia.org/wikipedia/tr/thumb/2/27/Chelsea_FC_arma.svg/300px-Chelsea_FC_arma.svg.png"),
      league: "Premier League",
      stadium_name: "St James' Park",
      week: "Week 10",
      club1_stats: MatchStats(shots_on_goal: 2, shots: 4,possesion: 26 ,yellow_cards: 3, corner_kicks: 0, crosses: 10, goalkeeper_saves: 3, goal_kicks: 10),
      club2_stats: MatchStats(shots_on_goal: 6, shots: 15,possesion: 74 ,yellow_cards: 2, corner_kicks: 2, crosses: 23, goalkeeper_saves: 2, goal_kicks: 2),
    ),
  ];
}
