import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void notificationDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          title: Text(title),
          content: Text(message),
          actions: [
            FilledButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(240.w, 54.w),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            )
          ],
        );
      },
    );
  }
