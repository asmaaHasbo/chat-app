import 'package:flutter/material.dart';

void animatedScrollingFun( scrollController) {
  scrollController.animateTo(
    scrollController.position.maxScrollExtent,
    duration: const Duration(seconds: 1),
    curve: Curves.easeIn,
  );
}