/*
*  tab_bar_widget.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spacebook/main.dart';
import 'package:spacebook/messages_widget/messages_widget.dart';
import 'package:spacebook/profile_widget/profile_widget.dart';
import 'package:spacebook/timeline_widget/timeline_widget.dart';
import 'package:provider/provider.dart';
import 'package:spacebook/timeline_widget/advertisement_item_widget.dart';
import 'package:spacebook/timeline_widget/event_item_widget.dart';


class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Last Page!"),
        backgroundColor: Theme.of(ctx).accentColor,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: (){
              Navigator.pop(ctx);
            },
          )
        ],
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.popUntil(ctx, ModalRoute.withName(Navigator.defaultRouteName));
          },
          child: Text("Go Home!"),
        ),
      ),
    );
  }
}


class TabBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<Widget> _tabWidgets = [
    TimelineWidget(),
    MessagesWidget(),
    ProfileWidget(),
    AdvertisementItemWidget()
  ];
  int _currentIndex = 0;

  //void _onTabChanged(int index) => this.setState(() => _currentIndex = index);
  void _onTabChanged(int index,BuildContext ctx) {
    print(index);
    if (index == 3) {
      Navigator.push(ctx, MaterialPageRoute(builder: (context)=>ThirdPage()));
    } else {
      this.setState(() => _currentIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    print(auth.is_login);
    if (auth.is_login == null) {
      print('login fail');
      Navigator.popUntil(
          context, ModalRoute.withName(Navigator.defaultRouteName));
    }
    return Scaffold(
      body: _tabWidgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color.fromARGB(255, 140, 28, 140),
        currentIndex: _currentIndex,
        onTap: (index) => this._onTabChanged(index,context),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-7.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "News",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-3.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Messages",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-6.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Profile",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/active-icon-6.png",
              width: 48,
              height: 48,
            ),
            title: Text(
              "Profile",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
