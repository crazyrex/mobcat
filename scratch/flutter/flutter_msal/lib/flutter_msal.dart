import 'dart:async';

import 'package:flutter/services.dart';

class FlutterMsal {
  static const MethodChannel _channel =
      const MethodChannel('flutter_msal');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
