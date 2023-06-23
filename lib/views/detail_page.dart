// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';
import 'package:football_app/data/live_match_data.dart';
import 'package:football_app/widgets/live_match_stats_together.dart';
import 'package:football_app/widgets/match_detail_card.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var data = LiveMatchData().club_list;
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorConst.scaffold_color,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        BoxDecorationConst.rounded_league_button)),
                    color: ColorConst.live_match_time_background_color),
                child: const BackButton(
                  color: Colors.white,
                )),
            Center(
              child: Text(
                data[0].league,
                style: GoogleFonts.aBeeZee(
                    color: Colors.white, fontWeight: FontWeight.w100),
              ),
            ),
            Container(
              height: 43,
              width: 43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                      BoxDecorationConst.rounded_league_button)),
                  color: ColorConst.live_match_time_background_color),
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined,
                    color: Colors.white, size: 23),
                onPressed: () {},
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: screen_height / 4,
                    decoration: const BoxDecoration(
                        color: ColorConst.live_match_color,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: screen_height / 6,
                        left: screen_width / 10,
                        right: screen_width / 10),
                    child: MatchDetailCard(match: data[1]),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 14,
          ),
          LiveStatsTogether(
            stats: data[1],
          )
        ],
      ),
    );
  }
}
