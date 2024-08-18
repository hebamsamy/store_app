import 'package:appp/Screens/ExploreScreen.dart';
import 'package:appp/Screens/JoinScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});
  static String screenName = "/Welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context)=>Joinscreen())
                // );

                Navigator.of(context).pushNamed(Joinscreen.screenName);
              },
              child: Text("Join US")),
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   CupertinoPageRoute(builder: (context)=>Explorescreen())
                // );
                Navigator.of(context).pushNamed(Explorescreen.screenName);
                // Navigator.of(context);
              },
              child: Text("Explore Our App"))
        ],
      ),
    );
  }
}
