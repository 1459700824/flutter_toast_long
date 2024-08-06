import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_toast_long_platform_interface.dart';

/// An implementation of [FlutterToastLongPlatform] that uses method channels.
class MethodChannelFlutterToastLong extends FlutterToastLongPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_toast_long');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool?> showToast(String msg, ToastDuration duration) async{
    var argument = {
      'content': msg,
      'duration': duration.toString()
    };
    var success = await methodChannel.invokeMethod('showToast', argument);
    return success;
  }
}


enum ToastDuration {
  short, long
}