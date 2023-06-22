// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/data/match_data.dart';
import 'package:football_app/widgets/live_matches_card.dart';

class ScrollLiveMatchs extends StatelessWidget{
  var matches = MatchData().club_list;
  @override
  Widget build(BuildContext context) {
    //double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left:screen_width / 10,top:screen_width / 25,bottom:screen_width / 15),
              child: Row(
                children: [
                  LiveMatchesCard(
                    match: matches[1],
                    color: ColorConst.live_match_color,
                  ),
                  Container(
                    width: 50,
                  ),
                  LiveMatchesCard(
                    match: matches[0],
                    color: Color.fromARGB(255, 250,250,250),
                  ),
                ],
              ),
            );
  }
}