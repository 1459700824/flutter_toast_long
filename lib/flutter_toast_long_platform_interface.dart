import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_toast_long_method_channel.dart';

abstract class FlutterToastLongPlatform extends PlatformInterface {
  /// Constructs a FlutterToastLongPlatform.
  FlutterToastLongPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterToastLongPlatform _instance = MethodChannelFlutterToastLong();

  /// The default instance of [FlutterToastLongPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterToastLong].
  static FlutterToastLongPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterToastLongPlatform] when
  /// they register themselves.
  static set instance(FlutterToastLongPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> showToast(String msg, ToastDuration duration) async{
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

}
