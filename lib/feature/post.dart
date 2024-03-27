
import 'package:heiwadai_app/api/v1/admin/Coupon.pb.dart';
import 'package:heiwadai_app/api/v1/user/Book.pb.dart';
import 'package:heiwadai_app/api/v1/user/Checkin.pb.dart';
import 'package:heiwadai_app/api/v1/user/Post.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import '../provider/rest_client.dart';
import 'base_feature.dart';

class PostClient extends BaseClient{
  PostClient(super.client): super(controller: 'PostController');

  Future<PostsResponse> getPosts({bool? useCache = true }) async {
    final res = await client.call(
        '$controller/GetPosts',useCache: useCache, cacheable: true);
    return PostsResponse.create()..mergeFromProto3Json(res);
  }

  Future<PostResponse> getPostById(int postId) async {
    final req = PostRequest(iD: postId);
    var response = await client.call('$controller/GetDetail', request: req);
    return PostResponse.create()..mergeFromProto3Json(response);
  }


  Future<void> use(String id) async {
    final req = CouponIDRequest(iD: id);
    await client.call('$controller/Use', request: req);
  }

}

final postClientProvider = Provider<PostClient>((ref) {
  final customRestClient = ref.watch(httpClientProvider);
  return PostClient(customRestClient);
});