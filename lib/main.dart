import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kraken/app_config.dart';
import 'package:kraken/controller/app_controller.dart';
import 'package:kraken/controller/user_controller.dart';
import 'package:kraken/ui/screens/index.dart';

Future<void> main() async {
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final container = ProviderContainer();

    return FutureBuilder(
      future: container.read(appController).init(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const CircularProgressIndicator();
        }

        String initialScreenID;
        if (container.read(userController).isSignedIn()) {
          initialScreenID = SignInScreen.id;
        } else {
          initialScreenID = HomeScreen.id;
        }
        return MaterialApp(
          title: AppConfig.appName,
          theme: ThemeData(
            primaryColor: Colors.indigo[900],
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: initialScreenID,
          routes: {
            SignInScreen.id: (context) => SignInScreen(),
            HomeScreen.id: (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
