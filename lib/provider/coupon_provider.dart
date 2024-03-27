
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/v1/shared/Coupon.pb.dart';
import '../feature/coupon.dart';
class CouponStateNotifier extends StateNotifier<List<Coupon>> {
  final CouponClient _couponClient;

  CouponStateNotifier(this._couponClient) : super([]);

  Future<void> fetchCoupons() async {
    final res = await _couponClient.getList();
    state = res.coupons;
  }

  void removeCoupon(String couponId) {
    state = state.where((coupon) => coupon.iD != couponId).toList();
  }
}

// CouponStateNotifierProviderの定義
final couponStateNotifierProvider =
StateNotifierProvider<CouponStateNotifier, List<Coupon>>((ref) {
  return CouponStateNotifier(ref.read(couponClientProvider));
});