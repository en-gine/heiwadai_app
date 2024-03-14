
import 'package:heiwadai_app/api/v1/admin/Coupon.pb.dart';
import 'package:heiwadai_app/api/v1/user/Book.pb.dart';
import 'package:heiwadai_app/api/v1/user/Checkin.pb.dart';
import 'package:heiwadai_app/api/v1/user/Post.pb.dart';


import 'base_feature.dart';

class PostClient extends BaseClient{
  PostClient(super.ref): super(controller: 'PostController');

  Future<PostsResponse> getPosts() async {
    final res = await client.call(
        '$controller/GetPosts');
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
