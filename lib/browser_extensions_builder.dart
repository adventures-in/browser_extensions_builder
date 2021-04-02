
import 'dart:async';

import 'package:flutter/services.dart';

class BrowserExtensionsBuilder {
  static const MethodChannel _channel =
      const MethodChannel('browser_extensions_builder');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
