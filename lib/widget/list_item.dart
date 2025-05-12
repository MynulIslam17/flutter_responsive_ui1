import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {

  final String title;
  final String subtitle;
  final String leadImg;
  final Color color;

  const CardItem({
    super.key,
    required this.leadImg,
    required this.subtitle,
    required this.title,
    required this.color


  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(left: 15,right: 15),
      child: ListTile(

        title:Padding(
          padding: const EdgeInsets.only(left:20),
          child: Text(title,style: TextStyle(fontSize:ScreenUtil().screenWidth<600 ? 14.sp : 22,fontWeight: FontWeight.bold),),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(subtitle,style: TextStyle(fontSize: ScreenUtil().screenWidth <600  ? 13.sp : 20),),
        ),
        leading: Container(
          width: 70,
          height:70,


          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: color
          ),
          child:Center(
            child: SizedBox(

                width: 30.r,
                height: 30.r,

                child: Image.asset(leadImg,)),
          )

        ),

        trailing: Icon(Icons.more_horiz),
      ),
    );
  }
}