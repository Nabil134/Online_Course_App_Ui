import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
class VerticalList extends StatelessWidget {
  const VerticalList({super.key,required this.courseImage,required this.courseTitle,
    required this.courseDuration, required this.courseRating,
  } );
final String courseImage,courseTitle,courseDuration;
final double courseRating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        height: 92,
        width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width*0.13,
        child:  Stack(children: [
          Container(
            height: 92,
            width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width*0.13,
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
            left: 26,
            bottom: 19,
          ),
            child: Row(children: [
              Container(

                height:92,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(courseImage),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(courseTitle,style:GoogleFonts.roboto(
                      fontSize: 18,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text(courseDuration,style:GoogleFonts.roboto(
                      fontSize: 12,
                      color: Color(0xff8C8C8C),
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    RatingBar.builder(
                        initialRating: courseRating,
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
            bottom: 45,
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

      ),
    );
  }
}
