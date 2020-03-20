/*
*  profile_widget.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:spacebook/profile_settings_widget/profile_settings_widget.dart';
import 'package:spacebook/profile_widget/view_item_widget.dart';
import 'package:spacebook/profile_widget/view_three_item_widget.dart';
import 'package:spacebook/profile_widget/view_two_item_widget.dart';
import 'package:spacebook/values/values.dart';


class ProfileWidget extends StatelessWidget {
  
  void onLeftItemPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettingsWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Dr. What Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Lato",
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          FlatButton(
            onPressed: () => this.onLeftItemPressed(context),
            textColor: Color.fromARGB(255, 255, 255, 255),
            child: Text(
              "Settings",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
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
            Container(
              height: 297,
              margin: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                color: AppColors.primaryBackground,
              ),
              child: Column(
                children: [
                  Container(
                    width: 124,
                    height: 124,
                    margin: EdgeInsets.only(top: 25),
                    child: Image.asset(
                      "assets/images/avatar-temp.png",
                      fit: BoxFit.none,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11),
                    child: Text(
                      "Dr. What",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 12, 22),
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400,
                        fontSize: 26,
                        height: 1.23077,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Opacity(
                      opacity: 0.4,
                      child: Text(
                        "1 Phone Booth, Andromeda",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 12, 22),
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 27),
                    child: Text(
                      "Traveler, dreamer, showman. Occasionally gets into fight, not always survives.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.42857,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 74,
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 42,
                    right: 41,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 42,
                            height: 44,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  "365",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 248, 132, 98),
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 2),
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: Text(
                                      "Photos",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 43,
                            height: 44,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 1),
                                  child: Text(
                                    "326",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 140, 28, 140),
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Opacity(
                                  opacity: 0.4,
                                  child: Text(
                                    "Stalking",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 1),
                          child: Text(
                            "58k",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Spacer(),
                        Opacity(
                          opacity: 0.4,
                          child: Text(
                            "Stalkers",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 2, top: 20, right: 2, bottom: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Opacity(
                        opacity: 0.4,
                        child: Text(
                          "LATEST PHOTOS",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: -0.07385,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 122,
                      margin: EdgeInsets.only(top: 13),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 122,
                          childAspectRatio: 0.99187,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) => ViewItemWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}