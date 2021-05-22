import 'package:flutter/material.dart';
import 'package:kraken/app_config.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConfig.appName),
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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.stars_sharp),
              label: 'Ranking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              label: 'Match',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Team',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.self_improvement),
              label: 'Profile',
            ),
          ],
          currentIndex: 1,
          onTap: (value) => {},
        ),
      ),
    );
  }
}
