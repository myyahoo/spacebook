/*
*  timeline_widget.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:spacebook/timeline_widget/advertisement_item_widget.dart';
import 'package:spacebook/timeline_widget/event_item_widget.dart';
import 'package:spacebook/timeline_widget/lifetime_event_item_widget.dart';
import 'package:spacebook/timeline_widget/news_item_widget.dart';
import 'package:spacebook/timeline_widget/news_two_item_widget.dart';
import 'package:spacebook/values/values.dart';


class TimelineWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "What's up?",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Lato",
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        ),
        automaticallyImplyLeading: false,
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
                margin: EdgeInsets.only(top: 64),
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) => NewsItemWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}