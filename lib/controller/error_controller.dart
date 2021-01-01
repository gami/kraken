import 'package:hooks_riverpod/hooks_riverpod.dart';

final errorController = StateNotifierProvider(
  (ref) => ErrorController(ErrorState(null)),
);

final errorStateProvider =
    Provider.autoDispose((ref) => ref.watch(errorController.state));

class ErrorController extends StateNotifier<ErrorState> {
  ErrorController(ErrorState state) : super(state);

  void show(String message) {
    assert(message != null);
    state = ErrorState(message);
  }
}

class ErrorState {
  ErrorState(this.errorMessage);
  final String errorMessage;
}
