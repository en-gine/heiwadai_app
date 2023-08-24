import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownBuilder<T> extends HookWidget {
  const DropdownBuilder(this.items, this.def, {super.key});
  final List<T> items;
  final T def;

  @override
  Widget build(BuildContext context) {
    final isSelectedValue = useState<T>(def);

    if (items.isEmpty) return const SizedBox();

    // 日付の場合
    if (items is List<DateTime>) {
      DateFormat dateFormat = DateFormat('HH:mm', "ja_JP");
      DateTime time = items.first as DateTime;
      List<DateTime> times = [time];
      while (items.last != times.last) {
        time = time.add(const Duration(minutes: 30));
        times.add(time);
      }
      return dropdownContainer(
        child: DropdownButton<DateTime>(
        isExpanded: true,
        underline: Container(),
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.black,
          height: 20.sp / 16.sp,
        ),
          items: times.map((time) {
            String text = (time.day == 1)
                ? dateFormat.format(time)
                : '${dateFormat.format(time)} (翌日)';
            return DropdownMenuItem(
              value: time,
              child: Text(text),
            );
          }).toList(),
          value: isSelectedValue.value as DateTime,
          onChanged: (value) {
            isSelectedValue.value = value as T;
          },
        ),
      );
    }

    // その他の場合
    return dropdownContainer(
      child: DropdownButton<String>(
        isExpanded: true,
        underline: Container(),
        style: TextStyle(
          fontSize: 16.sp,
          height: 20.sp / 16.sp,
          color: Colors.black,
        ),
        items: items.map((item) {
          String text;
          String name;

          if (item is String) {
            text = name = item;
          } else if (item is List<String>) {
            text = item[0];
            name = item[1];
          } else {
            text = name = item.toString();
          }

          return DropdownMenuItem(
            value: text,
            child: Text(name),
          );
        }).toList(),
        value: isSelectedValue.value is String
            ? isSelectedValue.value as String
            : isSelectedValue.value.toString(),
        onChanged: (value) {
          isSelectedValue.value = value as T;
        },
      ),
    );
  }
}

Widget dropdownContainer({Widget? child}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    width: double.infinity,
    height: 54.w,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: const Color(0xffdadada)),
      borderRadius: BorderRadius.all(
        Radius.circular(5.w),
      ),
    ),
    child: child,
  );
}
