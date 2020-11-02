import 'package:flutter/material.dart';
import 'package:kuraken/app_config.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.appName),
      ),
      body: Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
