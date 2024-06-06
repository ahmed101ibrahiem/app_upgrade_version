import 'package:flutter/material.dart';
import 'package:new_version_plus/new_version_plus.dart';


class HomeViewModel {


  // we use new_version_plus package to check for app updates 
  final newVersion = NewVersionPlus();

  checkAppUpdate( BuildContext context) async {
    final status = await newVersion.getVersionStatus();
    if (status != null) {
      if (status.canUpdate) {
        newVersion.showUpdateDialog(
            context: context,
            versionStatus: status,
            dialogTitle: 'App Update',
            dialogText: 'New Update Available',
            launchModeVersion: LaunchModeVersion.external,
            allowDismissal: false,
            updateButtonText: 'Update Now');
      }
    }
  }
}
