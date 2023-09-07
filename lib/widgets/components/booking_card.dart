import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    required this.storeName,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.people,
    required this.summary,
    required this.imageUrl,
    required this.useDay,
  });
  final String storeName;
  final String title;
  final String startDate;
  final String endDate;
  final String people;
  final String summary;
  final String imageUrl;
  final int useDay;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.only(bottom: 10.w),
      elevation: 8,
      shadowColor: Colors.black.withOpacity(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                imageUrl,
                width: 150.w,
                height: 120.w,
                fit: BoxFit.fitHeight,
                // fit: BoxFit.fitWidth, // ソース画像が四角い場合
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 0, 15.w, 0),
                child: SizedBox(
                  width: 150.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 8.w),
                      Text(summary, style: TextStyle(fontSize: 12.sp)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.w, 10.w, 0, 20.w),
            // width: 295.w,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        "宿泊場所",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    SizedBox(
                      width: 220.w,
                      child: Text(
                        storeName,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        "ご宿泊人数",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    SizedBox(
                      width: 220.w,
                      child: Text(
                        // "$people名様",
                        '大人：1人、小人：0人',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        "ご宿泊日",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    SizedBox(
                      width: 220.w,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: startDate,
                            ),
                            const TextSpan(text: "～"),
                            TextSpan(
                              text: endDate,
                            ),
                            TextSpan(text: " ($useDay泊)"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
