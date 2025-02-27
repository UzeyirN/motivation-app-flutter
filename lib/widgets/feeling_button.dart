import 'package:flutter/material.dart';

TextButton buildFeelingButton(
    {required String feeling,
    required String assetPath,
    required VoidCallback onPressed}) {
  return TextButton(
    onPressed: onPressed,
    child: CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage(assetPath),
    ),
  );
}
