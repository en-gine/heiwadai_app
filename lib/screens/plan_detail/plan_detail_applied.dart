import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ColorMode { light, dark }

class PlanDetailApplied extends StatelessWidget {
  const PlanDetailApplied({super.key, required this.colorMode});
  final ColorMode colorMode;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
        horizontalInside: BorderSide(
          color: colorMode == ColorMode.light
              ? Colors.white
              : const Color(0xfff2f2f2),
          width: 5.w,
        ),
      ),
      columnWidths: Map.fromEntries([
        MapEntry(0, FixedColumnWidth(125.w)),
        MapEntry(1, FixedColumnWidth(210.w)),
      ]),
      children: [
        buildRow('チェックイン', '2023年04月29日(土)'),
        buildRow('チェックアウト', '2023年04月30日(日)'),
        buildRow('部屋', 'ツイン × 1部屋'),
        buildRow('人数', '1名'),
        buildRow(
          '料金',
          [
            Text(
              '支払い合計',
              style: TextStyle(
                fontSize: 12.sp,
                height: 16.sp / 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '26,000円',
              style: TextStyle(
                fontSize: 20.sp,
                height: 25.sp / 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '大人1名様¥10000子供1名様¥10000',
              style: TextStyle(
                fontSize: 12.sp,
                height: 20.sp / 12.sp,
              ),
            ),
            Text(
              '※サービス料・消費税込み',
              style: TextStyle(
                fontSize: 12.sp,
                height: 16.sp / 12.sp,
              ),
            ),
          ],
        ),
        buildRow(
          'お支払い方法',
          [
            Text(
              '現地払い',
              style: TextStyle(
                height: 22.sp / 16.sp,
              ),
            ),
            SizedBox(height: 5.w),
            Text(
              '現地では現金・クレジットカード・Paypayでお支払いいただけます。',
              style: TextStyle(
                fontSize: 12.sp,
                height: 20.sp / 12.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

TableRow buildRow(String title, Object content) {
  return TableRow(
    children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.fill,
        child: Container(
          padding: EdgeInsets.all(5.w),
          decoration: const BoxDecoration(
            color: Color(0xffdadada),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
              height: 20.sp / 12.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      TableCell(
        child: Container(
          padding: EdgeInsets.fromLTRB(10.w, 5.w, 10.w, 10.w),
          decoration: const BoxDecoration(
            color: Color(0xfff2f2f2),
          ),
          child: (content is List<String>)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final item in content)
                      Text(
                        item,
                        style: TextStyle(
                          fontSize: 15.sp,
                          height: 20.sp / 12.sp,
                        ),
                      ),
                  ],
                )
              : (content is List<Widget>)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: content,
                    )
                  : Text(
                      content as String,
                      style: TextStyle(
                        fontSize: 15.sp,
                        height: 20.sp / 12.sp,
                      ),
                    ),
        ),
      ),
    ],
  );
}
