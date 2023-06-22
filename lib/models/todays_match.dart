// ignore_for_file: non_constant_identifier_names

import 'package:football_app/models/football_club.dart';
import 'package:football_app/models/match_stats.dart';

class TodaysMatch {
  String league;
  String week;
  String home="Home";
  String away="Away";
  FootballClub club1;
  FootballClub club2;
  TodaysMatch({
    required this.club1,
    required this.club2,
    required this.league,
    required this.week,
  });
}
