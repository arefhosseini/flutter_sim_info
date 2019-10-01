import 'dart:async';

import 'package:flutter/services.dart';

class SimInfo {
  static const MethodChannel _channel =
      const MethodChannel('sim_info');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
