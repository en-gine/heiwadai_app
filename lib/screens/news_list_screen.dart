import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:intl/intl.dart";

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/posts.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('yyyy.MM.dd', "ja_JP");

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.w),
                  for (final post in posts)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 6.w),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.w),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(dateFormat.format(post.postDate.toLocal()),
                                  style: const TextStyle(fontSize: 16)),
                              Text(
                                post.title,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 125.w),
                ],
              )),
        ),
      ),
      bottomNavigationBar: const MyBottomNavi(),
    );
  }
}
