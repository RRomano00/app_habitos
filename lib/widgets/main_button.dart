import 'package:flutter/material.dart';

ElevatedButton mainButton({
  Color? backgroundColor,
  Color? foregroundColor,
  String? text,
  Widget? child,
  Function()? function,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
      backgroundColor: backgroundColor,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
    onPressed: function,
    child: text != null ? Text(text, style: TextStyle(fontSize: 16)) : child,
  );
}
