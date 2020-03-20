/*
*  messages_widget.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:spacebook/messages_widget/message_five_item_widget.dart';
import 'package:spacebook/messages_widget/message_four_item_widget.dart';
import 'package:spacebook/messages_widget/message_item_widget.dart';
import 'package:spacebook/messages_widget/message_six_item_widget.dart';
import 'package:spacebook/messages_widget/message_three_item_widget.dart';
import 'package:spacebook/messages_widget/message_two_item_widget.dart';
import 'package:spacebook/messages_widget/online_person_item_widget.dart';
import 'package:spacebook/messages_widget/online_person_three_item_widget.dart';
import 'package:spacebook/messages_widget/online_person_two_item_widget.dart';
import 'package:spacebook/values/values.dart';


class MessagesWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Messages",
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
            Container(
              height: 75,
              margin: EdgeInsets.only(left: 15, top: 74, right: 20),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 75,
                  childAspectRatio: 1.25,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => OnlinePersonItemWidget(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 12),
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) => MessageItemWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}