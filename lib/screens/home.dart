import 'package:flutter/material.dart';
import 'package:quiz2/screens/account.dart';
import 'package:quiz2/screens/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = const DrawerHeader(child: Text("Header"));
    var aboutChild = const AboutListTile(
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info),
        child: Text("About"));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Settings", SettingsScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz2"),
      ),
      body: const Center(
        child: Text("Home Screen"),
      ),
      // Set the nav drawer
      drawer: getNavDrawer(context),
    );
  }
}