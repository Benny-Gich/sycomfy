// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(Icons.apple),
    );
  }
}
