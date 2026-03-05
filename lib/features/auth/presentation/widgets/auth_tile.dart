import 'package:flutter/material.dart';

class AuthTile extends StatelessWidget {
  final Widget prefixIcon;
  final String title;
  final Widget suffixIcon;
  const AuthTile({
    super.key,
    required this.prefixIcon,
    required this.title,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: prefixIcon,
      title: Text(title),
      trailing: suffixIcon,
    );
  }
}
