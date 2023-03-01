import 'package:flutter/material.dart';
import 'package:quiz2/screens/account.dart';
import 'package:quiz2/screens/home.dart';
import 'package:quiz2/screens/settings.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      SettingsScreen.routeName: (BuildContext context) => const SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => const AccountScreen(),
    },
  ));
}
