import 'package:kuraken/repository/app_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appController = Provider.autoDispose((ref) => AppController(ref.read));

class AppController {
  AppController(this.read);

  final Reader read;

  Future<void> init() async {
    await read(appRepository).init();
  }
}
