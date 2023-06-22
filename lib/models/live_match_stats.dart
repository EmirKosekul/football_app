// ignore_for_file: non_constant_identifier_names

import 'package:football_app/models/football_club.dart';
import 'package:football_app/models/match_stats.dart';

class LiveMatchStats{
  String league;
  String week;
  String home="Home";
  String away="Away";
  FootballClub club1;
  FootballClub club2;
  MatchStats club1_stats;
  MatchStats club2_stats;
  LiveMatchStats({
    required this.club1,
    required this.club2,
    required this.league,
    required this.week,
    required this.club1_stats,
    required this.club2_stats,
  });
}