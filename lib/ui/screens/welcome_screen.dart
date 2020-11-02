import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:twitter_login/twitter_login.dart';
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
                    height: 96.0,
                  ),
                  TwitterAuthButton(
                    onPressed: () async {
                      final twitterLogin = TwitterLogin(
                        apiKey: DotEnv().env['TWITTER_API_KEY'],
                        apiSecretKey: DotEnv().env['TWITTER_API_SECRET_KEY'],
                        redirectURI: 'kuraken://app',
                      );
                      final authResult = await twitterLogin.login();
                      switch (authResult.status) {
                        case TwitterLoginStatus.loggedIn:
                          Navigator.pushNamed(context, HomeScreen.id);
                          break;
                        case TwitterLoginStatus.cancelledByUser:
                          print('cancell');
                          break;
                        case TwitterLoginStatus.error:
                          print('error');
                          break;
                      }
                    },
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
