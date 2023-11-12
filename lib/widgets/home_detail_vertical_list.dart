import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeDetailVerticalList extends StatelessWidget {
  final String txt1,txt2,img;
  final Color ContainerColor;
  const HomeDetailVerticalList({super.key,required this.txt1,required this.txt2,required this.img,
    required this.ContainerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            color: ContainerColor,
            borderRadius: BorderRadius.circular(19),
            image: DecorationImage(
              image: AssetImage(img),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(txt1,
              overflow: TextOverflow.ellipsis,
              style:GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:Color(0xffFFFFFF),
              ),
            ),
            Row(children: [
              Text(txt2,
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
  }
}
