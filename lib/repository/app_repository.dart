import 'package:kuraken/client/firebase_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final appRepository =
    Provider.autoDispose<AppRepository>((ref) => AppRepository(ref.read));

class AppRepository {
  AppRepository(this.read);

  final Reader read;

  Future<void> init() async {
    await DotEnv().load('.env');

    final firebase = read(firebaseClient);
    await firebase.init();
  }
}
