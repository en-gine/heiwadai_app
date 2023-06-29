import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentsArea extends StatelessWidget {
  const ContentsArea({super.key, required this.widgets});
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 15.w),
        padding: EdgeInsets.only(top: 5.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 20,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(20.w),
            child: Center(
              child: Column(
                children: [
                  ...widgets,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
