// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';
import 'package:football_app/models/todays_match.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveMatchesCard extends StatelessWidget {
  final TodaysMatch match;
  final Color color;
  final Color text_color;
  LiveMatchesCard({required this.match, required this.color,required this.text_color});
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      height: screen_height / 4,
      width: screen_width / 1.5,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(height:screen_height/60),
          Text(
            match.league,
            style: TextStyle(color: text_color),
          ),
          Container(height: 6,),
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
                    height: screen_height / 8,
                    width: screen_width / 8,
                  ),
                  Text(match.club1.name,style: TextStyle(color: text_color),),
                  Text(match.home,style: TextStyle(color:ColorConst.matches_date_color),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "0 : 3 ",
                    style: GoogleFonts.robotoSlab(
                      color: text_color,
                      fontWeight: FontWeight.bold,
                      fontSize: screen_height/25,
                      ),
                  ),          
                  Container(height: screen_height/50,), 
                  Padding(
                    padding: const EdgeInsets.only(right:5),
                    child: Container(       
                      height: screen_height/25,   
                      width: screen_width/8.5,      
                      child: Padding(
                        padding: const EdgeInsets.only(right:0),
                        child: Center(child: Text("83'",style: TextStyle(color: Colors.white),)),
                      ),
                      decoration: BoxDecoration(
                        color:ColorConst.live_match_time_background_color,
                        border: Border.all(
                            color: ColorConst.live_match_time_border_color,
                            width: 3,
                            ),                         
                        borderRadius: BorderRadius.all(
                            Radius.circular(BoxDecorationConst.rounded_box)
                            ),
                            
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image.network(
                    match.club2.logo,
                    height: screen_height / 8,
                    width: screen_width / 8,
                  ),
                  Text(match.club2.name,style: TextStyle(color: text_color),),
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
