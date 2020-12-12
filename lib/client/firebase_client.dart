import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kuraken/entity/user.dart' as entity;

final firebaseClient = Provider((ref) => FirebaseClient());

class FirebaseClient {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> init() async {
    await Firebase.initializeApp();
  }

  Future<entity.User> signIn(String authToken, String authTokenSecret) async {
    final AuthCredential credential = TwitterAuthProvider.credential(
      accessToken: authToken,
      secret: authTokenSecret,
    );

    final user = (await _auth.signInWithCredential(credential)).user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);
    assert(user.uid == _auth.currentUser.uid);

    return buildEntityUser(user);
  }

  entity.User signedInUser() {
    final user = _auth.currentUser;
    if (user == null) {
      return null;
    }

    return buildEntityUser(user);
  }

  entity.User buildEntityUser(User user) {
    assert(user != null);

    return entity.User(
      uid: user.uid,
      displayName: user.displayName,
      photoURL: user.photoURL,
      signedInAt: user.metadata.lastSignInTime,
    );
  }
}
