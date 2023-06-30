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
            Row(
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
              padding: EdgeInsets.fromLTRB(30.w, 0, 20.w, 15.w),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _drawerHeading('クーポン対象店舗'),
                  if(stores.isNotEmpty) for (final store in stores)
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
              padding: EdgeInsets.fromLTRB(30.w, 0, 20.w, 30.w),
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
          ],
        ),
      ),
    );
  }
}
