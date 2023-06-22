import 'package:flutter/material.dart';
import 'package:football_app/models/live_match_stats.dart';
import 'package:football_app/widgets/live_stats.dart';

class LiveStatsTogether extends StatefulWidget {
LiveMatchStats stats;
  LiveStatsTogether({required this.stats});
  @override
  State<LiveStatsTogether> createState() => _LiveStatsTogetherState();
}

class _LiveStatsTogetherState extends State<LiveStatsTogether> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LiveStats(text: "Shots on goal", x: widget.stats.club1_stats.shots_on_goal, y: widget.stats.club2_stats.shots_on_goal),
        LiveStats(text: "Shots", x: widget.stats.club1_stats.shots, y: widget.stats.club2_stats.shots),
        LiveStats(text: "Possesion", x: widget.stats.club1_stats.possesion, y: widget.stats.club2_stats.possesion),
        LiveStats(text: "Yellow Card", x: widget.stats.club1_stats.yellow_cards, y: widget.stats.club2_stats.yellow_cards),
        LiveStats(text: "Corner Kicks", x: widget.stats.club1_stats.corner_kicks, y: widget.stats.club2_stats.corner_kicks),
        LiveStats(text: "Crosses", x: widget.stats.club1_stats.crosses, y: widget.stats.club2_stats.crosses),
        LiveStats(text: "Goalkeeper saves",x: widget.stats.club1_stats.goalkeeper_saves, y: widget.stats.club2_stats.goalkeeper_saves),
        LiveStats(text: "Goal kicks", x: widget.stats.club1_stats.goal_kicks, y: widget.stats.club2_stats.goal_kicks),
      ],
    );
  }
}
