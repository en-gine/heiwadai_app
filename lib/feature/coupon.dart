
import 'package:heiwadai_app/api/v1/shared/Coupon.pb.dart';
import 'package:heiwadai_app/api/v1/user/MyCoupon.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import '../provider/rest_client.dart';
import 'base_feature.dart';

class CouponClient extends BaseClient {
  CouponClient(super.client) : super(controller: 'MyCouponController');

  Future<MyCouponsResponse> getList({bool? useCache = true}) async {
    final res = await client.call('$controller/GetList', useCache: useCache, cacheable: true);
    return MyCouponsResponse.create()..mergeFromProto3Json(res);
  }

  Future<Coupon> getDetail(String couponId) async {
    final req = CouponIDRequest(iD: couponId);
    var response = await client.call('$controller/GetDetail', request: req);
    return Coupon.create()..mergeFromProto3Json(response);
  }

  Future<void> use(String couponId) async {
    final req = CouponIDRequest(iD: couponId);
    await client.call('$controller/Use', request: req);
  }
}

final couponClientProvider = Provider<CouponClient>((ref) {
  final customRestClient = ref.watch(httpClientProvider);
  return CouponClient(customRestClient);
});