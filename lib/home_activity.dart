
import 'dart:convert';

import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_design/widget/emoji_widget.dart';
import 'package:practice_design/widget/list_item.dart';

class HomeActivity extends StatefulWidget {
    const HomeActivity({super.key});

    @override
    State<HomeActivity> createState() => _HomeActivityState();
  }

  class _HomeActivityState extends State<HomeActivity> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,

        body: SafeArea(
        
          child: Column(

            children: [

             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                child: Column(



                  children: [

                    // name part
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi Azaan",style: TextStyle(fontSize: 24.sp,color: Colors.white,fontWeight: FontWeight.bold)),
                            SizedBox(height: 7.h,),
                            Text("11 May,2025",style: TextStyle(color: Colors.blue[100],fontSize: 12.sp),)

                          ],
                        ),

                        Card(
                          color: Colors.deepPurpleAccent[100],

                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Icon(Icons.notifications,color: Colors.white,size: 30.h,),
                          ),)

                      ],
                    ),

                    SizedBox(height: 20.h,),

                    // searchview

                    Container(

                      padding: EdgeInsets.all(17),

                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[100],
                          borderRadius: BorderRadius.circular(12.r)
                      ),

                      child: Row(


                        children: [
                          Icon(Icons.search,color: Colors.white,size: 25.r,),
                          SizedBox(width: 10.w,),
                          Text("Search",style:TextStyle(fontSize: 16.sp,color: Colors.white),)
                        ],

                      ),

                    ),

                    SizedBox(height: 20.h,),

                    // feeling part

                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text("How do you feel ? ",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                        Icon(Icons.more_horiz,color: Colors.white,size: 25.w,)
                      ],
                    ),

                    SizedBox(height: 15.h,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        Emoji_Widget(emoji: "😟",type: "Badly",),
                        Emoji_Widget(emoji: "😊", type: "Fine"),
                        Emoji_Widget(emoji: "😄", type: "Well"),
                        Emoji_Widget(emoji: "😁", type: "Excellent")


                      ],
                    ),

                    SizedBox(
                      height: 16.h,
                    ),


                  ],


                ),
              ),


              Expanded(
                child: Container(
                  width: double.infinity,
                
                
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.vertical(
                
                          top: Radius.circular(40),
                          bottom: Radius.circular(0)
                
                      )
                
                
                  ),
                  child: Column(
                
                    children: [
                
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                          children: [
                            Text(" Exercises",style: TextStyle(fontSize:(ScreenUtil().screenWidth) < 600 ? 19.sp :30,  fontWeight: FontWeight.bold),),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                
                      ),
                
                
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: CardItem(title: "Reading test ",subtitle: "15   exercises",leadImg: "assets/images/read.png",color: Colors.amber,),
                            );
                          },
                          itemCount: 10,
                
                
                        ),
                      )
                
                
                    ],
                
                
                  ),
                
                ),
              )







            ],


          ),
        ),


      );
    }
  }




