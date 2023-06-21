// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';


class MatchesCard extends StatelessWidget {
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
      ),
      height: screen_height / 10,
      width: screen_width / 1.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Man City",style: TextStyle(fontWeight: FontWeight.w700,color: ColorConst.matches_name_color),),
          Image.network(
            "https://pbs.twimg.com/profile_images/1605149215151235078/QlVBaoHu_400x400.jpg",
            height: screen_height / 20,
            width: screen_height / 20,
          ),
          Column(
            children: [
              Container(
                height: screen_height / 50,
              ),
              Text(
                "16:30",
                style: TextStyle(
                    color: ColorConst.matches_clock_color,
                    fontWeight: FontWeight.bold,
                    fontSize: screen_height / 50),
              ),
              Container(
                height: screen_height / 200,
              ),
              Text("30 OCT",
                  style: TextStyle(
                      color: ColorConst.matches_date_color,
                      fontSize: screen_height / 75)),
            ],
          ),
          Image.network(
            "https://pbs.twimg.com/profile_images/1631927919068037122/bHH3TkIJ_400x400.jpg",
            height: screen_height / 20,
            width: screen_height / 20,
          ),
          Text("Palace",style: TextStyle(fontWeight: FontWeight.w700,color: ColorConst.matches_name_color),),
        ],
      ),
    );
  }
}
