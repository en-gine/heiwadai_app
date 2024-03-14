import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/provider/rest_client.dart';

import '../api/v1/user/Banner.pb.dart';
import 'base_feature.dart';

class BannerClient extends BaseClient {
  BannerClient(super.ref) : super(controller: 'BannerController');

  Future<BannerResponse> getBanner() async {
    final res = await client.call(
        '$controller/GetBanner');
    return BannerResponse.create()
      ..mergeFromProto3Json(res);
  }
}