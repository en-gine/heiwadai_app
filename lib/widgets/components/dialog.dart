import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget button(BuildContext context, String text,
    {VoidCallback? onPressed, bool halfButton = false, int? bgColor}) {
  onPressed ??= () => Navigator.pop(context);

  return FilledButton(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(Color(bgColor ?? 0xFF000000)),
      minimumSize: MaterialStateProperty.all<Size>(
        Size((halfButton) ? 140.w : 240.w, 54.w),
      ),
    ),
    onPressed: onPressed,
    child: Text(text),
  );
}

void modalDialog(BuildContext context, String title, String message,
    {String? noText, String? yesText, VoidCallback? onPressed}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
        insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
        actionsPadding: EdgeInsets.only(top: 10.w, bottom: 40.w),
        titlePadding: EdgeInsets.only(top: 40.w, left: 20.w, right: 20.w),
        title: Center(child: Text(title)),
        content: Text(message),
        actions: [
          if (noText != null)
            button(
              context,
              noText,
              halfButton: true,
              bgColor: 0xFFB3B3B3,
            ),
          button(
            context,
            yesText ?? "OK",
            halfButton: (noText != null),
            onPressed: onPressed,
          ),
        ],
      );
    },
  );
}
