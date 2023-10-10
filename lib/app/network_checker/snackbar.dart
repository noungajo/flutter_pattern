import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController snackbar(String message, int duration) {
  return Get.showSnackbar(
    GetSnackBar(
      //message: message,
      messageText: Text(
        message,
      ),
      //icon: const Icon(Icons.done),
      duration: Duration(seconds: duration),
      snackPosition: SnackPosition.TOP,
    ),
  );
}

/*
 ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message,style:whiteTextButton)),
      );
*/
