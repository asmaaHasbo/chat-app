import 'package:flutter/material.dart';

void animatedScrollingFun( scrollController) {
  scrollController.animateTo(
    0.0,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeIn,
  );
}