import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app_ui/Screen/detail_screen.dart';
import 'package:online_course_app_ui/models/CourseDetailModel.dart';
import 'package:online_course_app_ui/models/CourseModel.dart';
import 'package:online_course_app_ui/widgets/horizontal_list.dart';


class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List img1 = [
    'assets/Saly-10.png',
    'assets/Saly-36 (1).png',

  ];
  List img2 = [
    'assets/Ellipse 1.png',
    'assets/Mask Group.png',
  ];
  List txt1 = [
    'Recomended',
    'New Class',
  ];
  List coursedetail = [
    'UI/UX DESIGNER BEGINNER for Everyone',
    'GRAPHIC DESIGNER MASTER for Everyone',
  ];
  List color1=[
    Color(0xff534EA7),
    Color(0xffF4C465),
  ];
  List color2=[
    Color(0xffAFA8EE),
    Color(0xffDD7E5D),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        physics: BouncingScrollPhysics( ),
        children: [
          /*first portion start here*/
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Text('Online',style:GoogleFonts.roboto(
  fontSize: 36,
  color: Color(0xffFFFFFF),
  fontWeight: FontWeight.bold,
),
),
 Text('Master Class',
   style: GoogleFonts.roboto(
     color: Color(0xffFFFFFF),
     fontSize: 42,
     fontWeight: FontWeight.w500,
   ),
 ) ,
            ],
          ),
          /*first portion end here*/
          /*second portion start here*/


          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 1,
            child: ListView.builder(
                itemCount:CourseData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen({
                            'background': img1[index],
                            'startcolor':color1[index],
                            'endcolor':color2[index],
                            'endcolor':color2[index],
                            'coursedetail':coursedetail[index],

                          }),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: CourseData[index].ContainerColor,
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
                                    CourseData[index].startcolor,
                                    CourseData[index].endcolor,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(36),
                              ),
                              child: Center(
                                child: Text(
                                  CourseData[index].courseHeadline,
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
                              CourseData[index].courseTitle,
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
                            child: Image.asset(CourseData[index].img,
                              height: MediaQuery.of(context).size.height * 0.35,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.asset(
                              CourseData[index].courseImage,

                              height: MediaQuery.of(context).size.height * 0.35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),


          /*second portion end here*/
          SizedBox(height: 10,),
          /*third portion start here*/
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Free Online Class',style:GoogleFonts.roboto(
                fontSize: 25,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('From over 30 Lectures',
                style: GoogleFonts.roboto(
                  color: Color(0xff9C9A9A),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ) ,
            ],
          ),
          /*third portion end here*/
          /*forth portion start here*/

Container(
  height: 92,
  child: ListView.builder(
    shrinkWrap: true,
    itemCount: CourseDetailData.length,
      itemBuilder: (context,index){
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Stack(

        children: [
        Container(
          height:100,
         width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width*0.20,
margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Color(0xff3E3A6D ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 13,
                offset: const Offset(0, 4),
              ),

            ],
          ),
        ),
        Padding(padding:EdgeInsets.only(
          right: 0,
          bottom:10,
        ),
          child: Row(children: [
            Container(

              height:92,
              width: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(CourseDetailData[index].courseImage),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text(CourseDetailData[index].courseTitle,style:GoogleFonts.roboto(
                    fontSize: 18,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(CourseDetailData[index].courseDuration,style:GoogleFonts.roboto(
                    fontSize: 12,
                    color: Color(0xff8C8C8C),
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  RatingBar.builder(
                      initialRating: CourseDetailData[index].courseRating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context,index)=> const Icon(Icons.star,
                        color: Color(0xffF4C465),),
                      onRatingUpdate: (rating){
                        print(rating);
                      }
                  ),
                ],
              ),
            ),
          ],),
        ),
        Positioned(
        right: 0,
          bottom: 34,
          child: Container(
            height: MediaQuery.of(context).size.height*0.06,
            width:MediaQuery.of(context).size.width*0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEB53A2),
            ),
            child: Icon(Icons.play_arrow,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      ],),
    );
  }),
),


          /*forth portion end here*/


        ],
      ),
    );
  }
}
/* Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff534EA7),
                    Color(0xffAFA8EE),
                  ],
                ),
                borderRadius: BorderRadius.circular(22),
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
                        color: Color(0xffAFA8EE),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Center(
                        child: Text(
                          'Recommended',
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
                      'UI/UX DESIGNER\nBEGINNER',
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
                    child: Image.asset('assets/Ellipse 1.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/Saly-10.png',
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                  ),
                ],
              ),
            ),

 */
/*
            Container(
              height: 349,
              width: 246,
              decoration: BoxDecoration(
gradient: LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
Color(0xff534EA7),
    Color(0xffAFA8EE),
  ] ,
),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                  //  padding: EdgeInsets.all(10),
                    height: 39,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Color(0xffAFA8EE),
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Center(
                      child: Text('Recomended',
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
                    child: Text('UI/UX DESIGNER\n BEGINNER',
                      style: GoogleFonts.roboto(
                        color: Color(0xffFFFFFF),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                  Positioned(
                    bottom: 0,
right: 0,
                    child: Image.asset('assets/Ellipse 1.png',

                    ),),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset('assets/Saly-10.png',
                      height:250,
                    ),),


                ],
              ),
            ),
            */