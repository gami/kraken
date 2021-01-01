import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kuraken/controller/error_controller.dart';
import 'package:tuple/tuple.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:kuraken/app_config.dart';
import 'package:kuraken/entity/user.dart';
import 'package:kuraken/exception/auth_exception.dart';
import 'package:kuraken/repository/user_repository.dart';

final _user = StateProvider.autoDispose<User>((ref) => null);

final userController = Provider.autoDispose((ref) => UserController(ref.read));

class UserController {
  UserController(this.read);

  final Reader read;

  Future<void> signIn() async {
    final tokens = await signInWithTwitter();

    final accessToken = tokens.item1;
    final accessSecret = tokens.item2;

    final user = await read(userRepository).signIn(accessToken, accessSecret);

    if (user != null) {
      read(_user).state = user;
    }
  }

  bool isSignedIn() {
    final user = read(userRepository).signedInUser();

    return user != null;
  }

  Future<Tuple2<String, String>> signInWithTwitter() async {
    final twitterLogin = TwitterLogin(
      apiKey: DotEnv().env['TWITTER_API_KEY'],
      apiSecretKey: DotEnv().env['TWITTER_API_SECRET_KEY'],
      redirectURI: AppConfig.appScheme,
    );
    final authResult = await twitterLogin.login();
    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        return Tuple2(authResult.authToken, authResult.authTokenSecret);
        break;
      case TwitterLoginStatus.cancelledByUser:
        print('canceled by user');

        read(errorController).show('Sign-in attempt was cancelled.');

        return null;
        break;
      case TwitterLoginStatus.error:
        print(authResult.errorMessage);
        throw AuthException(authResult.errorMessage);
    }

    throw UnsupportedError(
      'Unknown TwitterLoginStatus status=${authResult.status}',
    );
  }
}
