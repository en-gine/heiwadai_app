
import 'package:heiwadai_app/api/v1/user/Book.pb.dart';
import 'package:heiwadai_app/api/v1/user/Checkin.pb.dart';
import 'package:heiwadai_app/feature/base_feature.dart';

class CheckinClient extends BaseClient{
  CheckinClient(super.ref): super(controller: 'CheckinController');

  Future<StampCardResponse> getStampCard() async {
    final res = await client.call('$controller/GetStampCard');
    return StampCardResponse.create()..mergeFromProto3Json(res);
  }

  Future<BookResponse> checkin(String qrhash) async {
    final req = CheckinRequest(qrHash: qrhash);
    var response = await client.call('$controller/Checkin', request: req);
    return BookResponse.create()..mergeFromProto3Json(response);
  }

}


