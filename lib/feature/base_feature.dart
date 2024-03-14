
import 'package:heiwadai_app/api/v1/admin/Coupon.pb.dart';
import 'package:heiwadai_app/api/v1/user/Book.pb.dart';
import 'package:heiwadai_app/api/v1/user/Checkin.pb.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/provider/rest_client.dart';

class BaseClient {
  WidgetRef ref;
  CustomRestClient<dynamic> client;
  String controller;
  BaseClient(this.ref, {required this.controller}): client = ref.watch(httpClientProvider);
}
