import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_toast_long/flutter_toast_long.dart';
import 'package:flutter_toast_long/flutter_toast_long_platform_interface.dart';
import 'package:flutter_toast_long/flutter_toast_long_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterToastLongPlatform
    with MockPlatformInterfaceMixin
    implements FlutterToastLongPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterToastLongPlatform initialPlatform = FlutterToastLongPlatform.instance;

  test('$MethodChannelFlutterToastLong is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterToastLong>());
  });

  test('getPlatformVersion', () async {
    FlutterToastLong flutterToastLongPlugin = FlutterToastLong();
    MockFlutterToastLongPlatform fakePlatform = MockFlutterToastLongPlatform();
    FlutterToastLongPlatform.instance = fakePlatform;

    expect(await flutterToastLongPlugin.getPlatformVersion(), '42');
  });
}
