import 'package:flutter/material.dart';
class HomeDetailVerticalModel {
  final String txt1,txt2,img;
  final Color ContainerColor;

  HomeDetailVerticalModel ({required this.txt1, required this.txt2,
    required this.img, required this.ContainerColor,
  });
}
List <HomeDetailVerticalModel> HomeDetailVerticalData =[
HomeDetailVerticalModel(txt1: 'Fundamental of Design', txt2: '16 minutes', img: 'assets/Saly-21.png',
    ContainerColor:  Colors.yellow,),
  HomeDetailVerticalModel(txt1: 'Layout Design', txt2: '10 minutes', img: 'assets/Saly-25.png',
    ContainerColor:  Color(0xff326AA5 ),),
];