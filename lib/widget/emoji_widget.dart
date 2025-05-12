import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emoji_Widget extends StatelessWidget {

  final String emoji;
  final String type;

  const Emoji_Widget({
    super.key,
    required this.emoji,
    required this.type
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        Container(

            width: 65.r,
            height: 65.r,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[100],
                borderRadius: BorderRadius.circular(10.r)
            ),
            child: Center(child: Text(emoji,style: TextStyle(fontSize: ScreenUtil().screenWidth<600? 28.sp : 50),))

        ),
        SizedBox(height: 5.h,),
        Text(type,style: TextStyle(fontSize: 15.sp,color: Colors.white),)


      ],
    );
  }
}