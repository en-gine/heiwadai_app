
import 'package:heiwadai_app/api/v1/user/Book.pb.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'base_feature.dart';
class BookClient extends BaseClient {
  BookClient(super.ref) : super(controller: 'BookController');

  Future<BooksResponse> getMyBook() async {
    final res = await client.call(
        '$controller/GetMyBook');
    return BooksResponse.create()
      ..mergeFromProto3Json(res);
  }

  Future<BookResponse> getBookById( String id) async {
    final req = BookIDRequest(iD: id);
    var response = await client.call(
        '$controller/GetBookByID', request: req);
    return BookResponse.create()
      ..mergeFromProto3Json(response);
  }

  Future<void> cancel( String id) async {
    final req = BookIDRequest(iD: id);
    await client.call('$controller/Cancel', request: req);
  }

}
