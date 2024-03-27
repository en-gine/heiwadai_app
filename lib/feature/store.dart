
import 'dart:convert';

import 'package:heiwadai_app/api/v1/shared/Store.pb.dart';
import 'package:heiwadai_app/api/v1/user/Store.pb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../provider/rest_client.dart';
import 'base_feature.dart';

class StoreClient extends BaseClient{
  StoreClient(super.client): super(controller: 'StoreController');

  Future<Store> getByid(String storeId, {bool? useCache = true}) async {
    final req = StoreIDRequest(iD: storeId);
    final res = await client.call('$controller/GetById', request: req, useCache: useCache, cacheable: true);

    return Store.create()..mergeFromProto3Json(res);
  }

  Future<Stores> getAll({bool? useCache = true}) async {
    var response = await client.call('$controller/GetAll', useCache: useCache, cacheable: true);
    return Stores.create()..mergeFromProto3Json(response);
  }

  Future<StayableStores> getStayables({bool? useCache = true}) async {
    var response = await client.call('$controller/GetStayables', useCache: useCache, cacheable: true);
    return StayableStores.create()..mergeFromProto3Json(response);
  }

  Future<StayableStore> getStayableById(String storeId, {bool? useCache = true}) async {
    var response = await client.call('$controller/GetStayableByID', useCache: useCache, cacheable: true);
    return StayableStore.create()..mergeFromProto3Json(response);
  }
}

final storeClientProvider = Provider<StoreClient>((ref) {
  final customRestClient = ref.watch(httpClientProvider);
  return StoreClient(customRestClient);
});