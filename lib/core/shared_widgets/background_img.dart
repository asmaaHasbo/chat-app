import 'package:flutter/material.dart';
import '../constants/assests_images.dart';

backgroundImg() => const BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/images/test1.jpg"),
        fit: BoxFit.fill
    ),
  );