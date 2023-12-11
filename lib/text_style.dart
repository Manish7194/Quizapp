import 'package:flutter/material.dart';

Widget normalText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text ?? '', // Use the null-aware operator to handle null text
    style: TextStyle(
      fontFamily: "quick_semi",
      fontSize: size ?? 16.0, // Provide a default size if not specified
      color: color,
    ),
  );
}

Widget headingText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text ?? '', // Use the null-aware operator to handle null text
    style: TextStyle(
      fontFamily: "quick_bold",
      fontSize: size ?? 24.0, // Provide a default size if not specified
      color: color,
    ),
  );
}
