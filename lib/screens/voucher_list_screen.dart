import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:heiwadai_app/api/v1/shared/Store.pb.dart';
import 'package:heiwadai_app/feature/store.dart';
import 'package:heiwadai_app/screens/voucher_details_screen.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/components/coupon_button.dart';
import 'package:heiwadai_app/widgets/components/contents_area.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../api/v1/user/Checkin.pb.dart';
import '../api/v1/user/MyCoupon.pb.dart';
import '../feature/checkin.dart';
import '../feature/coupon.dart';
import '../widgets/components/until_coupon_text.dart';

Widget stamp(String image, String date, {double fontSize = 10,double offset = 10}) {
  return Container(
    width: 85.w,
    height: 85.w,
    alignment: Alignment.topCenter,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: offset.w),
      child: Text(
        date,
        style: TextStyle(
          fontSize: fontSize.sp,
          height: 22.sp / fontSize.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class VoucherListScreen extends HookConsumerWidget {
  const VoucherListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stamps = useState<StampCardResponse?>(null);
    final coupons = useState<MyCouponsResponse?>(null);
    final stores = useState<Stores?>(null);

    useEffect(() {
      Future.microtask(() async {
        try {
          await Future.wait([
            ref.watch(checkinClientProvider).getStampCard().then((value) => stamps.value = value),
            ref.watch(couponClientProvider).getList().then((value) => coupons.value = value),
            ref.watch(storeClientProvider).getAll().then((value) => stores.value = value),
          ]);

        } catch (error, stack) {
          debugPrint('Error: $error');
          debugPrint('Stack Trace: $stack');
        }
      });
      return null;
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(title: 'クーポン', style: AppBarStyle.basic),
      endDrawer: const MyDrawer(),
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
                  SizedBox(height: 10.w),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.w)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.w),
                                child: const Heading("チェックイン履歴"),
                              ),
                              Column(
                                children: [
                                  if (stamps.value != null && stamps.value!.stamps.isNotEmpty)
                                    for (int i = 0; i < stamps.value!.stamps.length; i += 3)
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          for (int j = i; j < i + 3 && j < stamps.value!.stamps.length; j++)
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: stamp(
                                                    stamps.value!.stamps[j].storeStampImage,
                                                    DateFormat('yyyy/MM/dd', "ja_JP").format(stamps.value!.stamps[j].checkInAt.toDateTime()),
                                                  ),
                                                ),
                                                if (j < i + 2 && j < stamps.value!.stamps.length - 1) SizedBox(width: 10.w),
                                              ],
                                            ),
                                        ],
                                      ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.w),
                  UntilCouponText(stamps.value?.stamps.length),
                  ContentsArea(
                    widgets: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.w),
                              child: const Heading("使えるクーポン"),
                            ),
                            if (coupons.value != null && coupons.value!.coupons.isNotEmpty)
                            for (final coupon in coupons.value!.coupons)
                              CouponButton(
                                id: coupon.iD,
                                name: coupon.name,
                                expire: coupon.expireAt.toDateTime(),
                                type: coupon.couponType,
                                onPressed: () {
                                  if (stores.value == null) return;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => VoucherDetailsScreen(coupon: coupon, stores: stores.value!),
                                    ),
                                  );
                                },
                              ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.w),
                              child: const Heading("クーポン利用対象店"),
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: stores.value?.stores.length ?? 0,
                              itemBuilder: (context, index) {
                                return Container(
                                    margin: EdgeInsets.only(bottom: 5.w),
                                    padding: EdgeInsets.only(left: 10.w),
                                    decoration: const BoxDecoration(
                                      color: Color(0xfff2f2f2),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(stores.value!.stores[index].name+stores.value!.stores[index].branchName),
                                        const Spacer(),
                                        SizedBox(
                                          width: 25.w,
                                          height: 40.w,
                                          child: IconButton(
                                            iconSize: 20.w,
                                            padding: EdgeInsets.zero,
                                            constraints: const BoxConstraints(),
                                            onPressed: () async {
                                              await launchUrl(Uri.parse('https://www.google.com/maps/search/?api=1&query=${stores.value!.stores[index].name+stores.value!.stores[index].branchName}'));
                                            },
                                            icon: SvgPicture.asset(
                                              'assets/icons/map.svg',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 25.w,
                                          height: 40.w,
                                          child: IconButton(
                                            iconSize: 12.w,
                                            padding: EdgeInsets.zero,
                                            constraints: const BoxConstraints(),
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                              'assets/icons/arrow_right.svg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              },
                            ),
                            const SizedBox(height: 100),
                          ],
                        ),
                      ),
                      const SizedBox(height: 100),
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
