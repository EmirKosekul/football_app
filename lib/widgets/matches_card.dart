// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';
import 'package:football_app/models/todays_match.dart';

class MatchesCard extends StatelessWidget {
  final TodaysMatch match;
  MatchesCard({required this.match});
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius:
              BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 3.0),
            )
          ]),
      height: screen_height / 15,
      width: screen_width / 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            match.club1.name,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: ColorConst.matches_name_color),
          ),
          Image.network(
            match.club1.logo,
            height: screen_height / 25,
            width: screen_height / 25,
          ),
          Column(
            children: [
              Container(
                height: screen_height / 90,
              ),
              Text(
                "06:30",
                style: TextStyle(
                    color: ColorConst.matches_clock_color,
                    fontWeight: FontWeight.bold,
                    fontSize: screen_height / 50),
              ),
              Container(
                height: screen_height / 160,
              ),
              Text("30 OCT",
                  style: TextStyle(
                      color: ColorConst.matches_date_color,
                      fontSize: screen_height / 75)),
            ],
          ),
          Image.network(
            match.club2.logo,
            height: screen_height / 25,
            width: screen_height / 25,
          ),
          Text(
            match.club2.name,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: ColorConst.matches_name_color),
          ),
        ],
      ),
    );
  }
}
