import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

@immutable
class TwitterAuthButton extends StatelessWidget {
  const TwitterAuthButton({
    @required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TwitterSignInButton(
      onPressed: onPressed,
      borderRadius: 8,
    );
  }
}
