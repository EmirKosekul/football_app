// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';
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
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left:0,right:0,),
        child: Container(
          height: screen_height/1.85,
          width: screen_width/1.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(child: Container(height:screen_height/22,width:screen_width/4.7,child:Center(child: Text("Stats",style: TextStyle(color: Colors.white),)),decoration: BoxDecoration(color:Colors.pinkAccent,borderRadius: BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),),),),
                      InkWell(child: Container(height:screen_height/22,width:screen_width/4.7,child:Center(child: Text("Line-up",style: TextStyle(color: ColorConst.matches_date_color),)),decoration: BoxDecoration(color:ColorConst.stats_unact_button_color,borderRadius:  BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),),),),
                      InkWell(child: Container(height:screen_height/22,width:screen_width/4.7,child:Center(child: Text("Summary",style: TextStyle(color: ColorConst.matches_date_color),)),decoration: BoxDecoration(color:ColorConst.stats_unact_button_color,borderRadius: BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),),),),
                    ],
                  ), 
                     LiveStats(text: "Shots on goal", x: widget.stats.club1_stats.shots_on_goal, y: widget.stats.club2_stats.shots_on_goal),
                     LiveStats(text: "Shots", x: widget.stats.club1_stats.shots, y: widget.stats.club2_stats.shots),
                     LiveStats(text: "Possesion %", x: widget.stats.club1_stats.possesion, y: widget.stats.club2_stats.possesion),
                     LiveStats(text: "Yellow Card", x: widget.stats.club1_stats.yellow_cards, y: widget.stats.club2_stats.yellow_cards),
                     LiveStats(text: "Corner Kicks", x: widget.stats.club1_stats.corner_kicks, y: widget.stats.club2_stats.corner_kicks),
                     LiveStats(text: "Crosses", x: widget.stats.club1_stats.crosses, y: widget.stats.club2_stats.crosses),
                     LiveStats(text: "Goalkeeper saves",x: widget.stats.club1_stats.goalkeeper_saves, y: widget.stats.club2_stats.goalkeeper_saves),
                     LiveStats(text: "Goal kicks", x: widget.stats.club1_stats.goal_kicks, y: widget.stats.club2_stats.goal_kicks),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
