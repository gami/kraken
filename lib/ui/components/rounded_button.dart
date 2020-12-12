import 'package:flutter/material.dart';

@immutable
class RoundedButton extends StatelessWidget {
  const RoundedButton({
    @required this.color,
    @required this.onPressed,
    @required this.label,
  });

  final Color color;
  final void Function() onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 42,
          child: Text(label),
        ),
      ),
    );
  }
}
