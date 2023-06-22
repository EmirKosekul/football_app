// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/core/decoration_const/box_decoration.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarrMainPage extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left:20),
        child: Row(
          children: [
            Text("Live",style:GoogleFonts.dosis(fontSize: 30,color:ColorConst.matches_name_color,fontWeight: FontWeight.w400)),
            Text("Sc",style:GoogleFonts.dosis(fontWeight: FontWeight.bold,color:ColorConst.matches_name_color,fontSize: 30)),
            Text("o",style:GoogleFonts.dosis(fontWeight: FontWeight.bold,color:ColorConst.league_button_color,fontSize: 30)),
            Text("re",style:GoogleFonts.dosis(fontWeight: FontWeight.bold,color:ColorConst.matches_name_color,fontSize: 30)),
          ],
        ),
      ),
      leadingWidth: 110,
      backgroundColor: ColorConst.scaffold_color,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                  Radius.circular(BoxDecorationConst.rounded_league_button)),
            ),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
        ),
      ],
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://img.freepik.com/free-photo/profile-handsome-bearded-black-guy-standing-pink-background-smiling-looking-left-copy-space_1258-77840.jpg"),
      ),
    );
  }
}
