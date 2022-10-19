// import 'dart:async';

// import 'package:flutter/services.dart';

// class PluginCodelab {
//   static const MethodChannel _channel = MethodChannel('plugin_codelab');

//   static Future<String?> get getPlatformVersion async {
//     final String? version = await _channel.invokeMethod('getPlatformVersion');
//     return version;
//   }

//   static Future<int?> onKeyDown(int key) async {
//     final int? numNotesOn = await _channel.invokeMethod('onKeyDown', [key]);
//     return numNotesOn;
//   }

//   static Future<int?> onKeyUp(int key) async {
//     final int? numNotesOn = await _channel.invokeMethod('onKeyUp', [key]);
//     return numNotesOn;
//   }
// }

import 'plugin_codelab_platform_interface.dart';

class PluginCodelab {
  Future<String?> getPlatformVersion() {
    return PluginCodelabPlatform.instance.getPlatformVersion();
  }

  Future<int?> onKeyDown(int key) async {
    return PluginCodelabPlatform.instance.onKeyDown(key);
  }

  Future<int?> onKeyUp(int key) async {
    return PluginCodelabPlatform.instance.onKeyUp(key);
  }
}
