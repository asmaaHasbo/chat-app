import 'package:flutter/material.dart';

SnackBar snackBar({required String msg, required Color color}) {
  return SnackBar(
    content: Text(msg),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
  );
}
