import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sparksee_flutter_example/sparksee_flutter_example.dart';

void main() {
  const MethodChannel channel = MethodChannel('sparksee_flutter_example');

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
    expect(await SparkseeFlutterExample.platformVersion, '42');
  });
}
