import 'package:flutter/material.dart';

class Accounts {
  final String leadingImage;
  final String title;
  final String trailingImage;
  final Widget page;

  Accounts(
      {required this.leadingImage,
      required this.title,
      required this.trailingImage,
      required this.page});
}
