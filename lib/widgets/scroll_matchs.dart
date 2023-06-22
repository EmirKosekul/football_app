// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:football_app/data/match_data.dart';
import 'package:football_app/widgets/matches_card.dart';

class ScrollMatchs extends StatelessWidget {
  var matches = MatchData().club_list;
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    //double screen_width = MediaQuery.of(context).size.width;
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 20,
            ),
            MatchesCard(
              match: matches[0],
            ),
            Container(
              height: screen_height/45,
            ),
            MatchesCard(
              match: matches[1],
            ),
            Container(
              height: screen_height/45,
            ),
            MatchesCard(
              match: matches[1],
            ),
            Container(
              height: screen_height/45,
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
