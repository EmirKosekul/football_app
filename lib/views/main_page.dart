// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/data/match_data.dart';
import 'package:football_app/models/todays_match.dart';
import 'package:football_app/widgets/live_matches_card.dart';
import 'package:football_app/widgets/matches_card.dart';

class MyHomePage extends StatelessWidget {
  var matches = MatchData().club_list;
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorConst.scaffold_color,
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text(
                    "Live Match",
                    style: TextStyle(
                        color: ColorConst.matches_name_color,
                        fontWeight: FontWeight.bold,
                        fontSize: screen_height / 35),
                  ),
                ),
                Container(width: screen_width/2,)
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(screen_width / 10),
              child: Row(
                children: [
                  LiveMatchesCard(
                    match: matches[1],
                  ),
                  Container(
                    width: 50,
                  ),
                  LiveMatchesCard(
                    match: matches[0],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Matchs",
                  style: TextStyle(
                      color: ColorConst.matches_name_color,
                      fontWeight: FontWeight.bold,
                      fontSize: screen_height / 35),
                ),
                Container(
                  width: screen_width / 10,
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: ColorConst.matches_clock_color,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              height: 20,
            ),
            MatchesCard(
              match: matches[0],
            ),
            Container(
              height: 10,
            ),
            MatchesCard(
              match: matches[1],
            ),
          ],
        ),
      ),
    );
  }
}
