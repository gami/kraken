import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kuraken/app_config.dart';
import 'package:kuraken/ui/components/index.dart';
import 'package:kuraken/ui/screens/index.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome';

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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorizeAnimatedTextKit(
                        text: [
                          AppConfig.appName,
                        ],
                        textStyle: TextStyle(
                          fontSize: 45.0,
                          fontFamily: 'Emblema One',
                        ),
                        colors: [
                          Colors.purple[300],
                          Colors.blue,
                          Colors.yellow,
                          Colors.pink[300],
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  RoundedButton(
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    label: 'Log In',
                  ),
                  RoundedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    label: 'Register',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
