
import 'flutter_toast_long_method_channel.dart';
import 'flutter_toast_long_platform_interface.dart';

class FlutterToastLong {
  Future<String?> getPlatformVersion() {
    return FlutterToastLongPlatform.instance.getPlatformVersion();
  }

  Future<bool?> showToast(String msg, ToastDuration duration) {
    return FlutterToastLongPlatform.instance.showToast(msg, duration);
  }



}
