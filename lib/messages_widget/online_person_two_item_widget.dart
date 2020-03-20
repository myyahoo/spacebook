/*
*  online_person_two_item_widget.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:spacebook/values/values.dart';


class OnlinePersonTwoItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 60,
      height: 75,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 18,
            right: 18,
            bottom: 0,
            child: Text(
              "Jack",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Lato",
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: -1,
            top: -1,
            right: -1,
            child: Image.asset(
              "assets/images/avatar-temp-3.png",
              fit: BoxFit.none,
            ),
          ),
        ],
      ),
    );
  }
}