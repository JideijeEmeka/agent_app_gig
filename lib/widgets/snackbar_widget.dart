import 'package:flutter/material.dart';

SnackBar snackBar(
    {message = "Operation was successful",
    duration = const Duration(milliseconds: 2000)}) {
  return SnackBar(
    elevation: 6.0,
    duration: duration,
    behavior: SnackBarBehavior.floating,
    content: Text(message),
    action: SnackBarAction(
      label: '',
      onPressed: () {},
    ),
  );
}