import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class TwitterAuthButton extends StatelessWidget {
  final Function onPressed;

  TwitterAuthButton({
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TwitterSignInButton(
      onPressed: onPressed,
      borderRadius: 8.0,
    );
  }
}
