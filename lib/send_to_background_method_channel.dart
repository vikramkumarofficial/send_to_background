import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// An implementation of [SendToBackgroundPlatform] that uses method channels.
class MethodChannelSendToBackground  {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  static const MethodChannel methodChannel = MethodChannel('send_to_background');

  // send app to background
  static Future<void> sendToBackground() async {
    await methodChannel.invokeMethod('sendToBackground');
  }
}
