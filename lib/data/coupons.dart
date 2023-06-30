import 'package:heiwadai_app/models/coupon_item.dart';
import 'package:heiwadai_app/data/stores.dart';

List<CouponItem> coupons = [
  CouponItem(
    id: "1",
    name: "¥500",
    couponType: CouponType.standard,
    discount: 500,
    expire: DateTime(2023, 10, 20),
    isCombinationable: true,
    notices: [],
    usedAt: null,
    targetStore: stores,
  ),
  CouponItem(
    id: "2",
    name: "お誕生日",
    couponType: CouponType.birthday,
    discount: 500,
    expire: DateTime(2023, 10, 20),
    isCombinationable: true,
    notices: [],
    usedAt: null,
    targetStore: [stores[0]],
  ),
  CouponItem(
    id: "3",
    name: "¥500",
    couponType: CouponType.standard,
    discount: 500,
    expire: DateTime(2023, 11, 30),
    isCombinationable: true,
    notices: [],
    usedAt: null,
    targetStore: [stores[0], stores[1]],
  ),
];
