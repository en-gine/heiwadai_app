import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:intl/intl.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    this.storeName,
    required this.title,
    this.startDate,
    this.endDate,
    this.people,
    required this.summary,
    required this.imageUrl,
    this.price,
    this.useDay,
    this.detail,
  });
  final String? storeName;
  final String title;
  final String? startDate;
  final String? endDate;
  final String? people;
  final String summary;
  final String imageUrl;
  final int? price;
  final int? useDay;
  final String? detail;

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###");

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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            imageUrl,
            width: 150.w,
            height: (storeName != null) ? 180.w : 150.w,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.w, 0, 15.w, 0),
            child: SizedBox(
              width: 150.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (storeName != null)
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(5.w),
                      margin: EdgeInsets.only(top: 15.w, bottom: 5.w),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Text(
                        storeName!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: (storeName != null) ? 12.sp : 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  if (storeName == null) SizedBox(height: 8.w),
                  if (startDate != null && endDate != null)
                    Text(
                      "$startDate - $endDate",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  if (people != null)
                    Text("$people名様", style: TextStyle(fontSize: 12.sp)),
                  SizedBox(height: 8.w),
                  Text(summary, style: TextStyle(fontSize: 12.sp)),
                  if (price != null) SizedBox(height: 5.w),
                  if (price != null && useDay != null)
                    Row(
                      children: [
                        Text(
                          "税込",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                          ),
                        ),
                        const Spacer(),
                        RichText(
                            text: TextSpan(
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text: '¥${formatter.format(price)}',
                                style: TextStyle(fontSize: 16.sp)),
                            TextSpan(text: " /人(${useDay!}泊)"),
                          ],
                        )),
                      ],
                    ),
                  if (price != null) SizedBox(height: 14.w),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
