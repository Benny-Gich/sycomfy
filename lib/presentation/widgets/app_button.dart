import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      onPressed: onPressed,
      label: Text(text),
    );
  }
}
