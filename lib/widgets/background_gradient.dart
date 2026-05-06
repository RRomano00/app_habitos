import 'package:flutter/material.dart';

BoxDecoration backgroundGradient() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF4A90E2), Color(0xFF9013FE)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}