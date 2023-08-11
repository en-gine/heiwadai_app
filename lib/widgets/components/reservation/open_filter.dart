import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/provider/reservation.dart';

enum ButtonType {
  radio,
  toggle,
}

class SelectItem extends ConsumerWidget {
  const SelectItem({
    super.key,
    required this.name,
    required this.category,
    required this.type,
  });

  final String name;
  final String category;
  final ButtonType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planFilter = ref.read(planFilterProvider);
    final data = planFilter.firstWhere((item) => item.title == name);

    return GestureDetector(
      onTap: () => {
        if (type == ButtonType.toggle)
          ref.read(planFilterProvider.notifier).toggle(name)
        else if (type == ButtonType.radio)
          ref.read(planFilterProvider.notifier).radioSwitch(name, category)
      },
      child: Container(
        width: 164.9.w,
        height: 48.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
        decoration: BoxDecoration(
          color: (data.active) ? const Color(0xfff2f2f2) : Colors.white,
          border: Border.all(
            width: 2,
            color: (data.active) ? Colors.black : const Color(0xffb3b3b3),
          ),
          borderRadius: BorderRadius.circular(5.w),
        ),
        child: Text(
          name.toString(),
          style: TextStyle(
            fontSize: 16.sp,
            height: 28.sp / 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SetFilter extends ConsumerWidget {
  const SetFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planFilter = ref.watch(planFilterProvider);

    return Column(
      children: [
        const Heading("詳細条件", type: HeadingType.h3),
        SizedBox(height: 20.w),
        const Text('条件を選択してください'),
        SizedBox(height: 20.w),
        counter(planFilter, "ご利用方法", 'room', ButtonType.radio),
        SizedBox(height: 30.w),
        counter(planFilter, "喫煙/禁煙", 'smoke', ButtonType.radio),
        SizedBox(height: 30.w),
        counter(planFilter, "食事", 'meal', ButtonType.toggle),
      ],
    );
  }
}

Widget counter(
    List<PlanFilter> planFilter, String title, String category, ButtonType type) {
  final items = planFilter.where((item) => item.category == category);
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: Heading(title, type: HeadingType.h3, align: TextAlign.start),
      ),
      Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        spacing: 5,
        runSpacing: 5,
        children: [
          ...items
              .map((item) =>
                  SelectItem(name: item.title, category: category, type: type))
              .toList(),
        ],
      ),
    ],
  );
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

void openFilter(BuildContext context) {
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
              child: const SetFilter(),
            ),
            const BottomConfirmForm(),
          ]),
        ],
      );
    },
  );
}
