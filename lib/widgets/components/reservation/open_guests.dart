import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/provider/reservation.dart';

class NumberOfGuests extends ConsumerWidget {
  const NumberOfGuests({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Heading("宿泊人数", type: HeadingType.h3),
        SizedBox(height: 10.w),
        counter('大人', ref, adultGuestsProvider),
        SizedBox(height: 20.w),
        counter('小人', ref, childGuestsProvider),
        SizedBox(height: 20.w),
        counter('部屋数', ref, roomCountProvider),
        SizedBox(height: 200.w),
      ],
    );
  }
}

Widget counter(String title, WidgetRef ref, StateProvider<int?> provider) {
  final cnt = ref.watch(provider);

  return Row(children: [
    Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    const Spacer(),
    SizedBox(
      width: 30.w,
      height: 30.w,
      child: IconButton(
        onPressed: () => {
          ref.read(provider.notifier).state = (cnt ?? 0) + 1,
        },
        iconSize: 30.w,
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset(
          'assets/icons/plus_circle.svg',
        ),
      ),
    ),
    SizedBox(width: 20.w),
    Text(
      cnt != null ? cnt.toString() : '0',
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
    ),
    SizedBox(width: 20.w),
    SizedBox(
      width: 30.w,
      height: 30.w,
      child: IconButton(
        onPressed: () => {
          if (cnt != null && cnt > 0)
            ref.read(provider.notifier).state = cnt - 1,
        },
        iconSize: 30.w,
        padding: EdgeInsets.zero,
        icon: SvgPicture.asset(
          'assets/icons/minus_circle.svg',
        ),
      ),
    ),
  ]);
}

class BottomConfirmForm extends ConsumerWidget {
  const BottomConfirmForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(20.w, 10.w, 20.w, 20.w),
        decoration: const BoxDecoration(
          color: Color(0xfff2f2f2),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              offset: Offset(0, 4),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 10.w),
            FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black,
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(240.w, 54.w),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("保存"),
            ),
          ],
        ),
      ),
    );
  }
}

void openGuests(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.close,
              size: 30.w,
              color: Colors.white,
            ),
          ),
          Stack(children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              padding: EdgeInsets.fromLTRB(20.w, 25.w, 20.w, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.w),
                  topRight: Radius.circular(10.w),
                ),
              ),
              child: const NumberOfGuests(),
            ),
            const BottomConfirmForm(),
          ]),
        ],
      );
    },
  );
}
