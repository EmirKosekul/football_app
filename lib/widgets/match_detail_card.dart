// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';
import 'package:football_app/models/live_match_stats.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchDetailCard extends StatelessWidget {
  LiveMatchStats match;
  MatchDetailCard({required this.match});
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      height: screen_height / 4,
      width: screen_width / 1.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(BoxDecorationConst.rounded_box)),),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(height: 7,),
          Text(
            match.stadium_name,
            style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
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
                    height: screen_height / 7,
                    width: screen_width / 7,
                  ),
                  Text(
                    match.club1.name,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),
                  ),
                  Text(
                    match.home,
                    style: TextStyle(color: ColorConst.matches_date_color),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "0 : 3",
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: screen_height / 25,
                    ),
                  ),
                  Container(
                    height: screen_height / 50,
                  ),
                  Container(
                    height: screen_width / 12.4,
                    width: screen_width / 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "83'",
                        style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                      )),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConst.detail_stats_alpha_color,
                      border: Border.all(
                          color: Colors.pinkAccent),
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
                    height: screen_height / 7,
                    width: screen_width / 7,
                  ),
                  Text(
                    match.club2.name,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),
                  ),
                  Text(
                    match.away,
                    style: TextStyle(color: ColorConst.matches_date_color),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
