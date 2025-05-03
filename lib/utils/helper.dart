
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void showSnackBar(String title , String massage) {
  Get.snackbar(title, massage,
  snackPosition: SnackPosition.BOTTOM,
  colorText: Colors.white,
  backgroundColor: const Color(0xff252526),
  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
  snackStyle: SnackStyle.GROUNDED,
  margin: const EdgeInsets.all(0.0)
  );
}