/*
*  main.dart
*  Spacebook
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:spacebook/welcome_widget/welcome_widget.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => AuthProvider(),
        )
      ],
      child: MaterialApp(
        home: WelcomeWidget(),
      ),
    );
  }
}

class AuthProvider extends ChangeNotifier{
  String is_login;
  void setAuth(bool chk_login){
    is_login = chk_login == true ?'login':'';
    notifyListeners();
  }
}
