import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kuraken/app_config.dart';
import 'package:kuraken/controller/error_controller.dart';
import 'package:kuraken/controller/user_controller.dart';
import 'package:kuraken/ui/components/index.dart';
import 'package:kuraken/ui/screens/home_screen.dart';

class SignInScreen extends StatelessWidget {
  static const String id = 'sign_in';

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final container = ProviderContainer();

    return ProviderListener(
      onChange: (context, ErrorState state) {
        showSnackBar(state.errorMessage);
      },
      provider: errorStateProvider,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppConfig.appName),
        ),
        body: Scaffold(
          key: _scaffoldKey,
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ColorizeAnimatedTextKit(
                          text: const [
                            AppConfig.appName,
                          ],
                          textStyle: const TextStyle(
                            fontSize: 45,
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
                    const SizedBox(
                      height: 96,
                    ),
                    TwitterAuthButton(
                      onPressed: () async {
                        await container.read(userController).signIn();
                        await Navigator.pushNamed(context, HomeScreen.id);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showSnackBar(String message) {
    SnackBar(content: Text(message));
  }
}
