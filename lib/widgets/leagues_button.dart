// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';

class LeaguesButtons extends StatelessWidget{
  final Color color;
  final String league_name;
  final Color league_name_color;
  LeaguesButtons({required this.color,required this.league_name,required this.league_name_color});
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        height: screen_height/18,
        width: screen_width/3,
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_league_button)),
        ),
        child: Center(child: Text(league_name,style: TextStyle(color: league_name_color,fontWeight: FontWeight.bold),)),
      ),
    );
  }

}