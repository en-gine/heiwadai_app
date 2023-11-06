import 'dart:io';

import 'package:flutter/material.dart';
import 'package:version/version.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:heiwadai_app/widgets/components/dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

Future updateCheck(context) async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(minutes: 1),
    minimumFetchInterval: const Duration(minutes: 5),
  ));

  await remoteConfig.setDefaults(const {"version": "1.0.0"});
  await remoteConfig.fetchAndActivate();

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  Version currentVersion = Version.parse(packageInfo.version);
  Version latestVersion = Version.parse(remoteConfig.getString("version"));

  if (currentVersion < latestVersion) {
    modalDialog(
      context,
      'アップデートのお知らせ',
      'バージョン$latestVersionがリリースされました。アップデートしてください。',
      yesText: 'OK',
      onPressed: () {
        if(Platform.isIOS == true){
          launchUrl(Uri.parse('http://www.google.com/'));
        }
        else{
          launchUrl(Uri.parse('http://www.example.com/'));
        }
        Navigator.pop(context);
      },
    );
  }
}
