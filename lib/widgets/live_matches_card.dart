// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';
import 'package:football_app/models/todays_match.dart';

class LiveMatchesCard extends StatelessWidget {
  TodaysMatch match;
  LiveMatchesCard({required this.match});
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      height: screen_height / 4,
      width: screen_width / 1.5,
      decoration: BoxDecoration(
        color: ColorConst.live_match_color,
        borderRadius:
            BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            match.league,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            match.week,
            style: TextStyle(color: ColorConst.matches_date_color),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.network(
                    match.club1.logo,
                    height: screen_height / 10,
                    width: screen_width / 10,
                  ),
                  Text(match.club1.name,style: TextStyle(color: Colors.white),),
                  Text(match.home,style: TextStyle(color:ColorConst.matches_date_color),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "0 : 3",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: screen_height/20,
                      ),
                  ),          
                  Container(height: screen_height/50,), 
                  Container(       
                    height: screen_width/15,   
                    width: screen_width/10,      
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("83'",style: TextStyle(color: Colors.white),)),
                    ),
                    decoration: BoxDecoration(
                      color:ColorConst.live_match_time_background_color,
                      border: Border.all(
                          color: ColorConst.live_match_time_border_color),
                      borderRadius: BorderRadius.all(
                          Radius.circular(BoxDecorationConst.rounded_box)),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image.network(
                    match.club2.logo,
                    height: screen_height / 10,
                    width: screen_width / 10,
                  ),
                  Text(match.club2.name,style: TextStyle(color: Colors.white),),
                  Text(match.away,style: TextStyle(color:ColorConst.matches_date_color),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
