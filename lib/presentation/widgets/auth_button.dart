import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;

  const AuthButton({
    super.key,
    required this.onPressed,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(360, 60),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        disabledBackgroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
      child: Text(
        buttonName,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSecondary,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
