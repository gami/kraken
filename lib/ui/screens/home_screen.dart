import 'package:flutter/material.dart';
import 'package:kuraken/app_config.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConfig.appName),
        bottom: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.stars_sharp),
              text: 'Ranking',
            ),
            Tab(
              icon: Icon(Icons.schedule),
              text: 'Match',
            ),
            Tab(
              icon: Icon(Icons.group),
              text: 'Team',
            ),
            Tab(
              icon: Icon(Icons.self_improvement),
              text: 'Profile',
            ),
          ],
        ),
      ),
      body: Scaffold(
        backgroundColor: Colors.indigo[900],
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: const [Text('Home')],
              )
            ],
          ),
        ),
      ),
    );
  }
}
