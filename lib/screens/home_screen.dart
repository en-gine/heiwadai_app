import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heiwadai_app/api/v1/shared/Coupon.pb.dart';
import 'package:heiwadai_app/api/v1/user/Banner.pbgrpc.dart';
import 'package:heiwadai_app/api/v1/user/Book.pb.dart';
import 'package:heiwadai_app/api/v1/user/Checkin.pb.dart';
import 'package:heiwadai_app/api/v1/user/MyCoupon.pb.dart';
import 'package:heiwadai_app/api/v1/user/Post.pb.dart';
import 'package:heiwadai_app/feature/book.dart';
import 'package:heiwadai_app/feature/checkin.dart';
import 'package:heiwadai_app/feature/post.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:heiwadai_app/feature/massage_check.dart';
import 'package:heiwadai_app/feature/update_check.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:go_router/go_router.dart';
import "package:intl/intl.dart";

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/components/coupon_button.dart';
import 'package:heiwadai_app/widgets/components/plan_card.dart';
import 'package:heiwadai_app/widgets/components/contents_area.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/sliders.dart';

import '../feature/banner.dart';
import '../feature/coupon.dart';
import 'news_details_screen.dart';

class ControlledSlider extends ConsumerStatefulWidget {
  final BannerResponse banners;
  const ControlledSlider({super.key, required this.banners});

  @override
  ControlledSliderState createState() => ControlledSliderState();
}

class ControlledSliderState extends ConsumerState<ControlledSlider> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  void initState() {
    // messageCheck(context, ref);
    // updateCheck(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 80.0,
            viewportFraction: 0.53,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
            // enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: widget.banners.banners.map((banner) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () async {
                    final url = Uri.tryParse(banner.uRL);
                    if (url == null) {
                      return;
                    }
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch ${banner.uRL}';
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Image.network(
                      banner.imageURL,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        debugPrint('Error: $error');
                        debugPrint('Error Image: ${banner.imageURL}');
                        debugPrint('stack trace: $stackTrace');
                        return Container(
                          color: Colors.grey,
                          child: const Center(
                            child: Text('Image failed to load'),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: sliders.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 4.0,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = useState<PostsResponse?>(null);
    final banners = useState<BannerResponse?>(null);
    final stamps = useState<StampCardResponse?>(null);
    final coupons = useState<MyCouponsResponse?>(null);
    final books = useState<BooksResponse?>(null);
    const MAX_STAMP_COUNT = 5;


    useEffect(() {
      Future.microtask(() async {
        try {
          await Future.wait([
            PostClient(ref).getPosts().then((value) => posts.value = value),
            BannerClient(ref).getBanner().then((value) =>  banners.value = value),
            CheckinClient(ref).getStampCard().then((value) => stamps.value = value),
            CouponClient(ref).getList().then((value) => coupons.value = value),
            BookClient(ref).getMyBook().then((value) => books.value = value),
          ]);

        } catch (error, stack) {
          debugPrint('Error: $error');
          debugPrint('Stack Trace: $stack');
        }
      });

      return null;
    }, []);
    DateFormat dateFormatPlan = DateFormat('yyyy/MM/dd', "ja_JP");
    DateFormat dateFormatInfo = DateFormat('yyyy.MM.dd', "ja_JP");

    Widget couponList = const SizedBox(height: 10);
    Widget postList = const SizedBox(height: 10);

    if (coupons.value != null && coupons.value!.coupons.isNotEmpty) {
      couponList = Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5.w),
              child: const Heading("使えるクーポン"),
            ),
            for (final coupon in coupons.value!.coupons)
              CouponButton(
                id: coupon.iD,
                name: coupon.name,
                expire: coupon.expireAt.toDateTime(),
                type: coupon.couponType,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                SizedBox(
                  height: 50.w,
                  child: TextButton(
                    onPressed: () => context.push('/voucher_list'),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "SEE MORE",
                            style: TextStyle(
                              fontSize: 14.sp,
                              height: 1.1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SvgPicture.asset(
                            'assets/icons/next_arrow.svg',
                            height: 12.w,
                            colorFilter: const ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    if (posts.value != null && posts.value!.posts.isNotEmpty) {
      postList = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.w),
            child: const Heading("お知らせ"),
          ),
          for (final post in posts.value!.posts)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsDetailsScreen(post: post),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 6.w),
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dateFormatInfo.format(post.postDate.toDateTime()),
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          post.title,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(style: AppBarStyle.logo),
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
                  if (books.value?.books != null && books.value!.books.isNotEmpty) ...[
                    SizedBox(height: 5.w),
                    const Heading('ご予約中のプラン'),
                    SizedBox(height: 5.w),
                    for (final book in books.value!.books)
                      PlanCard(
                        title: '${book.bookPlan.storeName}${book.bookPlan?.storeName}',
                        startDate: dateFormatPlan.format(book.stayFrom.toDateTime()),
                        endDate: dateFormatPlan.format(book.stayTo.toDateTime()),
                        people: "${book.adult}名様 ${book.child > 0 ? "(子ども${book.child}名様)": ""}" ,
                        summary: "${book.bookPlan.mealTypeName}／${book.bookPlan.smokeTypeName}／${book.bookPlan.roomTypeName}",
                        imageUrl: book.bookPlan.imageURL,
                      ),
                  ],
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16.sp,
                        letterSpacing: 1.4,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        const TextSpan(text: "クーポン獲得まであと"),
                        TextSpan(
                          text: '${() {
                            if (stamps.value == null) {
                              return MAX_STAMP_COUNT;
                            }
                            return MAX_STAMP_COUNT - stamps.value!.stamps.length;
                          }()}',
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(text: "回スタンプ"),
                      ],
                    ),
                  ),
                  ContentsArea(
                    widgets: [
                      couponList,
                      if (banners.value != null)
                        ControlledSlider(banners: banners.value!),
                      postList,
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
