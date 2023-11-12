import 'package:flutter/material.dart';

class CourseDetail {
  final String courseImage, courseTitle, courseDuration;
  final double courseRating;

  CourseDetail({required this.courseImage, required this.courseTitle,
    required this.courseDuration, required this.courseRating,
  });
}
  List <CourseDetail> CourseDetailData=[

    CourseDetail(courseImage: 'assets/Screenshot_6.png',
        courseTitle: 'Flutter Developer', courseDuration: '8 Hours',
        courseRating: 5),
    CourseDetail(courseImage: 'assets/Saly-13.png',
        courseTitle: 'Full Stack \n Javascript', courseDuration: '6 Hours',
        courseRating: 5),
  ];

