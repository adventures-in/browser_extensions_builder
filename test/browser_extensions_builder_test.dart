import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:browser_extensions_builder/browser_extensions_builder.dart';

void main() {
  const MethodChannel channel = MethodChannel('browser_extensions_builder');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await BrowserExtensionsBuilder.platformVersion, '42');
  });
}
