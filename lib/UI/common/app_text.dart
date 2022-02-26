import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle apptextStyle() => const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        color: Color.fromRGBO(210, 210, 210, 1),
      );
  static TextStyle stockStyle() => const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(255, 255, 255, 1));
  static Uri url =
      Uri.parse('https://run.mocky.io/v3/fc3ddccf-855c-4bb6-861c-cf7896aa963e');
}
