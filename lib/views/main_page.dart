// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/data/match_data.dart';
import 'package:football_app/widgets/appbar_mainpage.dart';
import 'package:football_app/widgets/navigation_bar.dart';
import 'package:football_app/widgets/scroll_league_buttons.dart';
import 'package:football_app/widgets/scroll_live_matchs.dart';
import 'package:football_app/widgets/scroll_matchs.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var matches = MatchData().club_list;

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarrMainPage(),
      bottomNavigationBar: MyNavigationBar(),
      backgroundColor: ColorConst.scaffold_color,
      body: Center(
        child: Column(
          children: [
            ScrollLeagueButtons(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Padding(
                  padding: const EdgeInsets.only(left: 20),
                   child:Text(
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
            ScrollLiveMatchs(),
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
            ScrollMatchs(),
          ],
        ),
      ),
    );
  }
}
