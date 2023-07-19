import 'package:flutter/material.dart';

import "package:intl/intl.dart";
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/posts.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('yyyy.MM.dd', "ja_JP");
    final post = posts.firstWhereOrNull((user) => user.id == id);

    if (post == null) {
      return const Scaffold(
        body: Center(
          child: Text('お知らせが見つかりませんでした'),
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(title: 'お知らせ', style: AppBarStyle.basic),
      endDrawer: MyDrawer(stores),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wood.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ContentsArea(
                    widgets: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dateFormat.format(post.postDate.toLocal()),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 20.sp / 16.sp,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.w),
                              child: Heading(post.title, align: TextAlign.left),
                            ),
                            // Text(post.content),
                            Html(
                              data: post.content,
                              style: {
                                "body": Style(
                                  margin: Margins.zero,
                                  padding: HtmlPaddings.zero,
                                ),
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 122.w),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavi(),
    );
  }
}
