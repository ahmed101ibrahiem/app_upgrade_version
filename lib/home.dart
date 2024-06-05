import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: UpgradeAlert(
          dialogStyle: UpgradeDialogStyle.cupertino,
          showLater: true,
          upgrader: Upgrader(
            debugLogging: true,
            debugDisplayAlways: true,
            languageCode: "ar",
            messages: UpgraderMessages(code: "ar"),
            countryCode: "EG",
            minAppVersion: '2.0.1',
            // durationUntilAlertAgain: Duration(minutes: 1),
          ),
          child: Container(
            alignment: Alignment.center,
            child: const Text('Home View'),
          ),
        ));
  }
}
