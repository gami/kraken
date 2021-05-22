import 'package:kraken/client/firebase_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as dot_env;

final appRepository =
    Provider.autoDispose<AppRepository>((ref) => AppRepository(ref.read));

class AppRepository {
  AppRepository(this.read);

  final Reader read;

  Future<void> init() async {
    await dot_env.load();

    await FirebaseClient.init();
  }
}
