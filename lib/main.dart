import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuraken/app_config.dart';
import 'package:kuraken/ui/screens/index.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
