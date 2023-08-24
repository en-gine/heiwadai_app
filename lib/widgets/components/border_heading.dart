import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

class BorderHeading extends StatelessWidget {
  const BorderHeading(this.text, {super.key, this.align});
  final String text;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 41.w,
      alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
      child: Heading(text, type: HeadingType.h3, align: align),
    );
  }
}
