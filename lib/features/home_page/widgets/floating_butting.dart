import 'package:flutter/material.dart';
import 'floating_icon_press.dart';

floatingButton(context) {
  return FloatingActionButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FloatingIconPress(),
          ));
    },
    child: const Icon(Icons.chat),
  );
}
