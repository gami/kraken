import 'package:kuraken/client/firebase_client.dart';
import 'package:kuraken/entity/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userRepository =
    Provider.autoDispose<UserRepository>((ref) => UserRepositoryImpl(ref.read));

abstract class UserRepository {
  Future<User> signIn(String authToken, String authTokenSecret);
  User signedInUser();
}

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this.read);

  final Reader read;

  @override
  Future<User> signIn(String authToken, String authTokenSecret) async {
    final firebase = read(firebaseClient);
    return firebase.signIn(authToken, authTokenSecret);
  }

  @override
  User signedInUser() {
    final firebase = read(firebaseClient);
    return firebase.signedInUser();
  }
}
