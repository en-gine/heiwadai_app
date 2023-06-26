import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.people,
    required this.summary,
    required this.imageUrl,
    this.priceText,
    this.detail,
  });
  final String title;
  final String startDate;
  final String endDate;
  final String people;
  final String summary;
  final String imageUrl;
  final String? priceText;
  final String? detail;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 10.w, horizontal: 15.w),
      elevation: 8,
      shadowColor: Colors.black.withOpacity(0.5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            imageUrl,
            width: 150.w,
            height: 150.w,
            fit: BoxFit.cover,
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
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.w),
                  Text(
                    "$endDate - $endDate",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("$people名様", style: TextStyle(fontSize: 12.sp)),
                  SizedBox(height: 8.w),
                  Text(summary, style: TextStyle(fontSize: 12.sp)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
