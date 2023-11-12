import 'package:flutter/material.dart';

class CourseModel {
  final Color ContainerColor,startcolor,endcolor;
  final String courseHeadline,courseTitle,courseImage,img;
  final Function()? onTap;
  CourseModel({
    required this.courseHeadline,
    required this.courseTitle,
    required this.courseImage,
    required this.img,
    required this.startcolor,
    required this.endcolor,
    this.ContainerColor=Colors.white,
    this.onTap,
  });
}

List<CourseModel> CourseData = [
  CourseModel(courseHeadline: 'Recommended', courseTitle: 'UI/UX DESIGNER\n BEGINNER',
      courseImage:'assets/Saly-10.png' , img: 'assets/Ellipse 1.png',ContainerColor: Color(0xff9288E4),
    startcolor:   Color(0xff534EA7), endcolor:   Color(0xffAFA8EE),
  ),
  CourseModel(courseHeadline: 'NEW CLASS', courseTitle: 'GRAPHIC DESIGNER\n MASTER',
    courseImage:'assets/Saly-36 (1).png' , img: 'assets/Mask Group.png',ContainerColor: Color(0xffDD7E5D),
    startcolor: Color(0xffF4C465), endcolor: Color(0xffDD7E5D),
  ),



];