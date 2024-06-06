


import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    // we use Upgrader package to check for app updates
     return UpgradeAlert(
       dialogStyle: UpgradeDialogStyle.cupertino,
       showLater: true,
       upgrader: Upgrader(
          debugLogging: true,
          debugDisplayAlways: true,
          languageCode: "ar",
          messages: UpgraderMessages(code: "ar"),
          countryCode: "EG",
          minAppVersion: '2.0.1',
        ),
       child: Scaffold(
         appBar: AppBar(
            title: const Text('Home'),
          ),
         body: Container(
           alignment: Alignment.center,
           child: const Text('settings'),
         ),
        
       ),
     );
  }
}