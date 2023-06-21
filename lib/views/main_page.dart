// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/widgets/matches_card.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.scaffold_color,
      body: Center(
        child:Column(
          children: [
            Container(height: 10,),
            MatchesCard(),
            Container(height: 10,),
            MatchesCard(),
          ],
        ),
      ),
    );
  }
}
