import 'package:flutter/material.dart';

void showCustomSnackBar({
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
      ),
      duration: const Duration(seconds: 1),
      backgroundColor: const Color(0xFF333333).withOpacity(0.8),
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 150, // ここで無理やり上にしている
        left: 16,
        right: 16,
      ),
    ),
  );
}