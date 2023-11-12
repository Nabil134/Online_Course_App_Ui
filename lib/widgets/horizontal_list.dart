
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalList extends StatelessWidget {
  final Color ContainerColor;
  final Color startcolor,endcolor;
  final String courseHeadline,courseTitle,courseImage,img;
 final Function()? onTap;
 const  HorizontalList({super.key,
    required this.courseHeadline,
    required this.courseTitle,
    required this.courseImage,
    required this.img,
   required this.startcolor,
   required this.endcolor,
     this.ContainerColor=Colors.white,
   this.onTap,
  });



  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(right: 26),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: ContainerColor,
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff534EA7),
                      Color(0xffAFA8EE),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Center(
                  child: Text(
                    courseHeadline,
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 20,
              child: Text(
                courseTitle,
                style: GoogleFonts.roboto(
                  color: Color(0xffFFFFFF),
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(img,
                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                courseImage,

                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
