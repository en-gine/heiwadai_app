import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/provider/rest_client.dart';

import '../api/v1/user/Banner.pb.dart';
import 'base_feature.dart';

class BannerClient extends BaseClient {
  BannerClient(super.client) : super(controller: 'BannerController');

  Future<BannerResponse> getBanner({bool? useCache = true }) async {
    final res = await client.call(
        '$controller/GetBanner',useCache: useCache, cacheable: true);
    return BannerResponse.create()
      ..mergeFromProto3Json(res);
  }
}
final bannerClientProvider = Provider<BannerClient>((ref) {
  final customRestClient = ref.watch(httpClientProvider);
  return BannerClient(customRestClient);
});

