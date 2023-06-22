// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_app/data/live_match_data.dart';
import 'package:football_app/widgets/live_match_stats_together.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var data = LiveMatchData().club_list;
  @override
  Widget build(BuildContext context) {
    //double screen_height = MediaQuery.of(context).size.height;
    //double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LiveStatsTogether(stats:data[0]),
    );
  }
}
