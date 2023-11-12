import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app_ui/models/home_detail_vertical_list_model.dart';
class DetailScreen extends StatefulWidget {
  Map details;
  DetailScreen(this.details);


  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: [
        /*first portion start here*/
        Container(
          height: 392,
          width: 416,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
             //   Color(0xff534EA7),
              //  Color(0xffAFA8EE),
                widget.details['startcolor'],
                widget.details['endcolor'],
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            image: DecorationImage(
              alignment: Alignment.bottomRight,
              image: AssetImage( widget.details['background']),
            ),
          ),
        ),
        /*first portion end here*/
        /*second portion start here*/
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingBar.builder(
                  initialRating: 5,
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
              /*second portion end here*/
              SizedBox(height: 10,),
              /*third portion start here*/
              Text(widget.details['coursedetail'],
                overflow: TextOverflow.ellipsis,
                style:GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color:Color(0xffFFFFFF),
              ),
              ),
              /*third portion end here*/
              SizedBox(height: 29,),
              /*forth portion start here*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox(width: 115.5,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/Ellipse 3.png'),
                            ),
                            ),
                          ),
                        ),
                      Positioned(
                        left: 22,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/Ellipse 4.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 44,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/Ellipse 5.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 68,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/Ellipse 6.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 2,),
                    Text('+28K Members',
                      style:GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color:Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 47,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xff353567),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: SvgPicture.asset('assets/Frame.svg'),
                  ),
                ),
              ],),
              /*forth portion end here*/
            const  SizedBox(height: 10,),
              /*fifth portion start here*/
              Container(
                height: 82,
                width: 374,
decoration: BoxDecoration(
  color: Color(0xff3E3A6D),
  borderRadius: BorderRadius.circular(19),
),
                child: Row(children: [
                  Container(
                    height: 82,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xffEB53A2),
                      borderRadius: BorderRadius.circular(19),
                      image: DecorationImage(
                        image: AssetImage('assets/Saly-20.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Introduction Design Graphic',
                      overflow: TextOverflow.ellipsis,
                      style:GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color:Color(0xffFFFFFF),
                      ),
                    ),
                    Row(children: [
                      Text('12 minutes',
                        style:GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color:Color(0xff8C8C8C),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(height: 20,
                        width: 39,
                        decoration: BoxDecoration(
                          color: Color(0xffEB53A2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('free',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        ),
                      ),
                    ],),
                  ],),
                ],),
              ),
              /*fifth portion end here*/
              /*last potion start here*/
Container(
  height: 82,
  width: 374,
  child: ListView.builder(
  //  shrinkWrap: true,
    itemCount: HomeDetailVerticalData.length,
      itemBuilder: (context,index){
    return Container(
      height: 82,
      width: 374,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xff3E3A6D),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(children: [
        Container(
          height: 82,
          width: 130,
          decoration: BoxDecoration(
            color: HomeDetailVerticalData[index].ContainerColor,
            borderRadius: BorderRadius.circular(19),
            image: DecorationImage(
              image: AssetImage(HomeDetailVerticalData[index].img),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(HomeDetailVerticalData[index].txt1,
              overflow: TextOverflow.ellipsis,
              style:GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:Color(0xffFFFFFF),
              ),
            ),
            Row(children: [
              Text(HomeDetailVerticalData[index].txt2,
                style:GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color:Color(0xff8C8C8C),
                ),
              ),
            ],),
          ],),
      ],),
    );
  }),
),
              /*last portion end here*/
            ],
          ),
        ),
      ],),
    );
  }
}
