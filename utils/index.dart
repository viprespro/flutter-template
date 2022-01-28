import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Utils {
  BuildContext context;

  // 可以设置构造方法，传递参数，参数传递时有区别，通过key:value形式
  Utils({required this.context});

  ///获取时间戳毫秒数,13位
  int getMilliseconds() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  ///复制到剪贴板
  void setClipData(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }

  ///获取屏幕高度
  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  ///获取屏幕状态栏高度
  double getStatusBarTop(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  ///获取屏幕方向
  Orientation getScreenOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  Future<String> getBatteryLevel() async {
    var batteryLevel = 'unknown';
    MethodChannel methodChannel =
        const MethodChannel('samples.flutter.io/battery');
    try {
      int result = await methodChannel.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level: $result%';
    } on PlatformException {
      batteryLevel = 'Failed to get battery level.';
    }
    return batteryLevel;
  }
}
