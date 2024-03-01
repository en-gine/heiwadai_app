import 'dart:async';
import 'dart:convert';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'package:heiwadai_app/api/v1/user/Messages.pb.dart';
import 'package:heiwadai_app/provider/rest_client.dart';

import 'dart:developer';

List<Map> data = [
  {
    "id": "14443",
    "title": "タイトル1",
    "content": "通知内容",
    "display_date": "2021/10/1",
    "author_id": 1,
    "create_at": "2021-10-01"
  },
  {
    "id": "47436",
    "title": "タイトル1",
    "content": "通知内容",
    "display_date": "2021/10/1",
    "author_id": 1,
    "create_at": "2021-10-01"
  },
  {
    "id": "576347",
    "title": "タイトル1",
    "content": "通知内容",
    "display_date": "2021/10/1",
    "author_id": 1,
    "create_at": "2021-10-01"
  }
];

Future messageCheck(context, WidgetRef ref) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final token = ref.watch(tokenProvider);
  final refresh = ref.watch(refreshTokenProvider);

  await dotenv.load(fileName: ".env");
  String backend = dotenv.env['API_BASE_URL'] ?? "http://localhost:3000";

  try {
    Map<String, String> headers = {
      'content-type': 'application/json',
      "Authorization": "Bearer $token",
      "X-Refresh-Token": "$refresh",
    };
    final String? readUid = prefs.getString('last_uid');
    // final request = json.encode(MessageRequest(iD: readUid).toProto3Json());
    final request = json.encode(MessageRequest().toProto3Json());
    final url =
        Uri.parse('$backend/server.user.MessageController/GetMessagesAfter');
    inspect(headers);
    inspect(request);
    var response = await http.post(url, headers: headers, body: request);
    inspect(response);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('A network error occurred');
    }
     // テストデータ:data / apiのレスポンス:response.body
    await prefs.setString('last_uid', data[0]['id']);
    // await prefs.setString('lastUid', response.body[0]['id']);
  } catch (e) {
    print(e);
  }
  showDialog(
    context: context,
    useSafeArea: false,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Scrollbar(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 25,
              ),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return messageArea(
                  data[index]['title'],
                  data[index]['display_date'],
                  data[index]['content'],
                );
              },
            ),
          ),
        ),
      ),
    ),
  );
}

Widget messageArea(String title, String date, String content) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
      Text(date, style: TextStyle(fontSize: 12.sp)),
      Text(content, style: TextStyle(fontSize: 14.sp)),
    ],
  );
}
