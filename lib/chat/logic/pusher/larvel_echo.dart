import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:the_business_square/shared/cache/storage.dart';

import '../../../shared/api_client/endpoints.dart';

// class EchoSingleton {
//   static EchoSingleton? _instance;
//   static late PusherChannelsFlutter _echo;
//
//   EchoSingleton._()  {
//
//     _echo = PusherImpl.pusher;
//
//   }
//
//   factory EchoSingleton.init() async {
//     await  PusherImpl.initPusher();
//     debugPrint('************ Init Echo & Pusher ************');
//
//     _instance = EchoSingleton._();
//
//     return _instance!;
//   }
//
//   static PusherChannelsFlutter get i => _echo;
// }

class EchoSingleton {
  static const appId = "1595644";
  static const pusher_key = "7df2eb6bbcd15f5f574b";
  static const secret = "f4016947ea6ca2e55529";
  static const cluster = "ap1";

  static const baseUrl = KEndPoints.baseUrl;

  static const hostEndpoint = baseUrl;
  static const hostAuthEndpoint = '${hostEndpoint}/chatify/api/chat/auth';
  static const port = 443;

  static PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();

  static unSub() async {
    await pusher.unsubscribe(channelName: channelName);
  }

  static final String channelName = 'chatify.${KStorage.i.getUser?.id}';
  static final String eventName = 'messaging';
  static Future<void> init(Function(PusherEvent) onEvent) async {
    try {
      await pusher.init(
        apiKey: pusher_key,
        cluster: cluster,
        onConnectionStateChange: onConnectionStateChange,
        onError: onError,
        onSubscriptionSucceeded: onSubscriptionSucceeded,
        onEvent: onEvent,
        onSubscriptionError: onSubscriptionError,
        onDecryptionFailure: onDecryptionFailure,
        onMemberAdded: onMemberAdded,
        onMemberRemoved: onMemberRemoved,
        authEndpoint: hostAuthEndpoint,
        onAuthorizer: onAuthorizer,
      );
      await pusher.subscribe(
        channelName: channelName,
        onEvent: (e) => print("Subscribe ,  On Event : $e"),
        onSubscriptionSucceeded: (e) => print("On Subscription Succeeded : $e"),
        onSubscriptionError: (e) => print("On Subscription Error : $e"),
      );
      await pusher.connect();
    } catch (e) {
      print("Pusher Catch ERROR: $e");
      rethrow;
    }
  }

  static Digest getSignature(String value) {
    var key = utf8.encode(pusher_key);
    var bytes = utf8.encode(value);

    var hmacSha256 = Hmac(sha256, key); // HMAC-SHA256
    var digest = hmacSha256.convert(bytes);
    return digest;
  }

  static onAuthorizer(String channelName, String socketId, dynamic options) {
    final auth = getSignature("$socketId:$channelName");

    return {
      "auth": auth,
    };
  }

  void onTriggerEventPressed(d) async {
    pusher.trigger(PusherEvent(channelName: channelName, eventName: eventName, data: d));
  }

  static log(String text) {
    print(text);
  }

  static onConnectionStateChange(dynamic currentState, dynamic previousState) {
    return log("Connection: $currentState");
  }

  static onError(String message, int? code, dynamic e) {
    log("onError: $message code: $code exception: $e");
  }

  static onEvent(PusherEvent event) {
    if (event.eventName == eventName) {
      log("onEvent: $event");
    }
  }

  static onSubscriptionSucceeded(String channelName, dynamic data) {
    log("onSubscriptionSucceeded: $channelName data: $data");
    final me = pusher.getChannel(channelName)?.me;
    log("Me: $me");
  }

  static onSubscriptionError(String message, dynamic e) {
    log("onSubscriptionError: $message Exception: $e");
  }

  static onDecryptionFailure(String event, String reason) {
    log("onDecryptionFailure: $event reason: $reason");
  }

  static onMemberAdded(String channelName, PusherMember member) {
    log("onMemberAdded: $channelName user: $member");
  }

  static onMemberRemoved(String channelName, PusherMember member) {
    log("onMemberRemoved: $channelName user: $member");
  }

  static onSubscriptionCount(String channelName, int subscriptionCount) {
    log("onSubscriptionCount: $channelName subscriptionCount: $subscriptionCount");
  }
}
