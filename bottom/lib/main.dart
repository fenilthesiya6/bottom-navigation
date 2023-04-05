import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Bottom(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: bottomnavigation(),
    );
  }
}

class bottomnavigation extends StatefulWidget {
  bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int _selectindex=0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.red])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconbottombar(
                text: "home",
                icon: Icons.home,
                selected:_selectindex == 0 ,
                onPressed: () {
                  setState(() {
                     _selectindex=0;
                  });
                }),
            iconbottombar(
                text: "serach",
                icon: Icons.search_outlined,
                selected:_selectindex == 1 ,
                onPressed: () {
                  setState(() {
                     _selectindex=1;
                  });
                })
          ],
        ),
      ),
    );
  }
}

class iconbottombar extends StatelessWidget {
  final String text;
  final IconData icon;
   final Bool selected;
  final Function() onPressed;

  const iconbottombar(
      {required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 15,
              color: Colors.black,
            )),
        Text(
          text,
          style: TextStyle(fontSize: 12, color: Colors.black),
        )
      ],
    );
  }
}
