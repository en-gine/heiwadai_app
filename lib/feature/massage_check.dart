import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'dart:convert' as convert;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

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

Future messageCheck(context) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await dotenv.load(fileName: ".env");
  // var backend = dotenv.env['BACKEND_URL'];

  final String readUid = prefs.getString('last_uid') ?? "0";
  // final url = Uri.parse('$backend/get_messages_after/');
  // var response = await http.post(url, body: {'last_uid':readUid});
  //* ------- ダミーコード ------- */
  print('UID:$readUid');
  final url = Uri.parse('http://example.com/');
  var response = await http.get(url);
  //* ----- ダミーコード end ----- */
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('A network error occurred');
  }
  await prefs.setString('last_uid', data[0]['id']); // テストデータ:data / apiのレスポンス:response

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


// @t.matsunaga

// こんな感じで考えました。
// ---------
// バックエンドに/get_messages_after/{ID}?みたいなエンドポイントを作る（実際はGRPC）
// 返り値は
// type Message struct {
// 	ID          uuid.UUID
// 	Title       string
// 	Content     string
// 	DisplayDate time.Time //表示させる日
// 	AuthorID    uuid.UUID
// 	CreateAt    time.Time
// }
// みたいなオブジェクトの配列を作ります。
// フロントはメッセージの最終取得IDを保持しておく
// ログインするたびに保存しているIDを元にリクエスト
// バックエンドはIDより新しいメッセージを返す
// フロントは取得後
// 複数ある場合降順で表示させる。（文字が多い場合、モーダルにはスクロールバーを表示させる）
// 張り付けたURLくらいは外部リンクが張れた方がいいです。
// 内容はHTMLではなくプレーンテキスト
// イメージ的に添付のような感じです。
// タイトルだけBold
// 全然この通りではなくなんとなく形が整ってればOKです。
// https://www.figma.com/file/M4r1UrrsvbddpKad4avlT6/heiwadai-modal?type=design&node-id=0%3A1&mode=design&t=orclXdqCyriMty98-1
// --------------------
// 以上。



// Future messageCheck() async {
//   await dotenv.load(fileName: ".env");
//   var backend = dotenv.env['BACKEND_URL'];
//   print(backend);
//   final url = Uri.parse(backend + '/get_messages_after/');

//   var data = convert.jsonEncode({});
//   http
//       .post(url, headers: {'Content-Type': 'application/json'}, body: data)
//       .then((response) => print(response.body))
//       .catchError((error) => print(error));

//   // var response = await http.post(url, headers:headers, body:data);

//   // var data = {};
//   //   var response = await http.post(url, body: data);
//   // if (response.statusCode == 200) {
//   //   print(response.body);
//   // } else {
//   //   print('A network error occurred');
//   // }
//   // var response = await http.get(url);
//   // print('object');

//   // print('Response status: ${response.statusCode}');
//   // print('Response body: ${response.body}');
// }