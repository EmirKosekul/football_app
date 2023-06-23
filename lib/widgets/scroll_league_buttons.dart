// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/widgets/leagues_button.dart';

class ScrollLeagueButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left:screen_width / 13,top:screen_width / 10,bottom:screen_width / 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LeaguesButtons(color:Colors.pinkAccent,league_name:"Premier League",league_name_color: Colors.white,),
                  Container(width: screen_width/20,),
                  LeaguesButtons(color:Colors.white,league_name:"La Liga",league_name_color: ColorConst.matches_date_color,),
                  Container(width: screen_width/20,),
                  LeaguesButtons(color:Colors.white,league_name:"Süper Lig",league_name_color: ColorConst.matches_date_color,),
                ],
              ),
            );
  }

}