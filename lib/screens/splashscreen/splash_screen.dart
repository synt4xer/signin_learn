import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(child: Container(), preferredSize: Size(0, 0)),
      body: Container(
        decoration: BoxDecoration(color: Colors.black54),
        child: Center(
          child: Text("Splash Screen", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}