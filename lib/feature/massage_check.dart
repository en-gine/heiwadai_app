import 'dart:async';
import 'package:heiwadai_app/api/v1/user/Messages.pbgrpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:heiwadai_app/api/v1/user/Messages.pb.dart';
import 'package:heiwadai_app/provider/rest_client.dart';

import 'dart:developer';


Future messageCheck(context, WidgetRef ref) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<MessageResponse> messages = [];

  try {

    final String? readUid = prefs.getString('last_uid');
    final request = MessageRequest(iD: readUid);
    inspect(request);
    final client = ref.watch(httpClientProvider);
    var response = await client.call('MessageController/GetMessagesAfter', message: request);
    inspect(response);

    final MessagesResponse data = MessagesResponse.fromJson(response.body);
    final List<MessageResponse> messages = data.messages;
    inspect(data);
    await prefs.setString('lastUid', messages[0].iD);
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('メッセージの取得に失敗しました。')),
    );
    return false;
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
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return messageArea(
                  messages[index].title,
                  messages[index].displayDate.toDateTime().toString(),
                  messages[index].content,
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
