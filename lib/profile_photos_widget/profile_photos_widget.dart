/*
*  profile_photos_widget.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:spacebook/profile_photos_widget/title_item_widget.dart';
import 'package:spacebook/profile_photos_widget/title_two_item_widget.dart';
import 'package:spacebook/profile_photos_widget/view_eight_item_widget.dart';
import 'package:spacebook/profile_photos_widget/view_five_item_widget.dart';
import 'package:spacebook/profile_photos_widget/view_four_item_widget.dart';
import 'package:spacebook/profile_photos_widget/view_seven_item_widget.dart';
import 'package:spacebook/profile_photos_widget/view_six_item_widget.dart';
import 'package:spacebook/values/values.dart';


class ProfilePhotosWidget extends StatelessWidget {
  
  void onGroupPressed(BuildContext context) => Navigator.pop(context);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Dr. When photos",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Lato",
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        ),
        leading: IconButton(
          onPressed: () => this.onGroupPressed(context),
          icon: Image.asset("assets/images/group-2.png",),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.01413, 0.51498),
              end: Alignment(1.01413, 0.48502),
              stops: [
                0,
                1,
              ],
              colors: [
                Color.fromARGB(255, 248, 132, 98),
                Color.fromARGB(255, 140, 28, 140),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 242, 244),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 73),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 375,
                    childAspectRatio: 10.13514,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => TitleItemWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}