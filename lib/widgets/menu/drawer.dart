import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heiwadai_app/models/store.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer(this.stores, {super.key});

  final List<Store> stores;

  Widget _drawerHeading(text, [icon]) => Container(
        height: 35.w,
        padding: EdgeInsets.only(bottom: 10.w),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                height: 1.75,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            if (icon == true)
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 16,
              ),
          ],
        ),
      );

  Widget _drawerListItem(text, onTap) => Container(
        height: 25.w,
        margin: EdgeInsets.only(bottom: 15.w),
        child: ListTile(
          // dense: true,
          title: Text(text),
          contentPadding: EdgeInsets.fromLTRB(20.w, 0, 0, 0),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 16,
          ),
          onTap: onTap,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.only(right: 10.w),
              child: Row(
                children: [
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: SvgPicture.asset(
                      'assets/icons/close.svg',
                      height: 25.w,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.w, 0, 20.w, 35.w),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 35.w,
                    child: ListTile(
                      dense: true,
                      title: _drawerHeading('HOME', true),
                      contentPadding: const EdgeInsets.all(0),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.w, 0, 20.w, 20.w),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _drawerHeading('クーポン対象店舗'),
                  if (stores.isNotEmpty)
                    for (final store in stores)
                      _drawerListItem(store.name, () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.w, 0, 20.w, 30.w),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 35.w,
                    child: ListTile(
                      dense: true,
                      title: _drawerHeading('ユーザー設定', true),
                      contentPadding: const EdgeInsets.all(0),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.w, 0, 20.w, 35.w),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 35.w,
                    child: ListTile(
                      dense: true,
                      title: _drawerHeading('パスワードを変更する', true),
                      contentPadding: const EdgeInsets.all(0),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.w, 0, 20.w, 0),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '利用規約',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 21.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'プライバシーポリシー',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'ログアウト',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 155.w + (48.w / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 25.w,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/sns_in.svg',
                        width: 25.w,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 25.w,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/sns_fb.svg',
                        width: 25.w,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 25.w,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/sns_tw.svg',
                        width: 25.w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
