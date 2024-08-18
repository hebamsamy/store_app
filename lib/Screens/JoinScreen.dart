import 'package:flutter/material.dart';

class Joinscreen extends StatelessWidget {
  const Joinscreen({super.key});
  static String screenName = "/join";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Join US"),
      ),
      body: Center(
        child: 
        ElevatedButton(onPressed: (){
          // Navigator.of(context).pop();
        }, child: Text("Done")),
      ),
    );
  }
}
