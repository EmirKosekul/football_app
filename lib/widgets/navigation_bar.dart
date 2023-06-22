// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:football_app/core/color_const/color_constants.dart';
import 'package:football_app/views/main_page.dart';

class MyNavigationBar extends StatefulWidget {
  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

var pages = [MyHomePage()];
int index = 0;

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: ColorConst.league_button_color,
      unselectedItemColor: ColorConst.matches_date_color,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"."),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),label: "."),
        BottomNavigationBarItem(icon: Icon(Icons.check_box_outline_blank_rounded),label: "."),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "."),
        ],
    );
  }
}
