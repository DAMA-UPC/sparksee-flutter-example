
import 'dart:async';

import 'package:flutter/services.dart';

class SparkseeFlutterExample {
  static const MethodChannel _channel =
      const MethodChannel('sparksee_flutter_example');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
