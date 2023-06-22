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
                "https://pbs.twimg.com/profile_images/1631927919068037122/bHH3TkIJ_400x400.jpg")),
    LiveMatchStats(
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
      club1_stats: MatchStats(shots_on_goal: 4, shots: 7,possesion: 40 ,yellow_cards: 4, corner_kicks: 2, crosses: 1, goalkeeper_saves: 6, goal_kicks: 8),
        club2_stats: MatchStats(shots_on_goal: 1, shots: 2,possesion: 60 ,yellow_cards: 1, corner_kicks: 3, crosses: 4, goalkeeper_saves: 1, goal_kicks: 5),
    ),
  ];
}
