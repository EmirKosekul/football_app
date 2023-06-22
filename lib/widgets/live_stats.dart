// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/data/live_match_data.dart';
import 'package:football_app/models/live_match_stats.dart';

class LiveStats extends StatefulWidget{
  //LiveMatchStats stats;
  String text;
  double x=60;
  double y = 30;
  double x_new = 0;
  double y_new = 0;
  double calculator = 0;
  bool decider=true;
  LiveStats({required this.text,required this.x,required this.y}) {
    calculator=100/(x+y);
    x_new= (x*calculator)/100;
    y_new= (y*calculator)/100;
    if(x_new>=y_new){
      decider=true;
    }
    else{
      decider=false;
    }
  }
  @override
  State<LiveStats> createState() => _LiveStatsState();
}

class _LiveStatsState extends State<LiveStats> {
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
     double screen_width = MediaQuery.of(context).size.width;
    return Center(
        child: Column(
          children: [
            Container(
              height: screen_height/50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.x.toInt().toString(),style: TextStyle(color:widget.decider ? Colors.pink : ColorConst.live_match_color,),),
                Text(widget.text),
                Text(widget.y.toInt().toString(),style: TextStyle(color:widget.decider ? ColorConst.live_match_color : Colors.pink,),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 10.0,
                  width: screen_width / 3,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned.fill(
                        child: LinearProgressIndicator(
                          value: 1-widget.x_new,
                          backgroundColor:widget.decider ? Colors.pink : ColorConst.live_match_color,
                          color: ColorConst.detail_stats_alpha_color,                          
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 10.0,
                  width: screen_width / 3,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned.fill(
                        child: LinearProgressIndicator(
                          value: widget.y_new,
                          color: widget.decider ? ColorConst.live_match_color : Colors.pink,
                          backgroundColor: ColorConst.detail_stats_alpha_color,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
  }
}