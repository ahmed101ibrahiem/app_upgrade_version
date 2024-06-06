import 'package:app_upgrade_version/home_viewmodel.dart';
import 'package:app_upgrade_version/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel vm = HomeViewModel();

  // we use new_version_plus package to check for app updates 
  @override
  void initState() {
    vm.checkAppUpdate(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text('Home View'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsView()));
                },
                child: const Text('Check for updates'),
              ),
            ],
          ),
        ));
  }
}
