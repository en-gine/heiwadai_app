import 'package:heiwadai_app/models/coupon_item.dart';

List<CouponItem> coupons = [
  CouponItem(
    id: "1",
    name: "¥500",
    couponType: CouponType.standard,
    discount: 500,
    expire: DateTime(2023, 10, 20),
    isCombinationable: true,
    overView: "",
    usedAt: null,
    targetStore: ["平和台ホテル天神"],
  ),
  CouponItem(
    id: "2",
    name: "お誕生日",
    couponType: CouponType.birthday,
    discount: 500,
    expire: DateTime(2023, 10, 20),
    isCombinationable: true,
    overView: "",
    usedAt: null,
    targetStore: ["平和台ホテル天神"],
  ),
  CouponItem(
    id: "3",
    name: "¥500",
    couponType: CouponType.standard,
    discount: 500,
    expire: DateTime(2023, 11, 30),
    isCombinationable: true,
    overView: "",
    usedAt: null,
    targetStore: ["平和台ホテル天神"],
  ),
];
