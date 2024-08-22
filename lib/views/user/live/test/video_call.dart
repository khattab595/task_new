// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:agora_uikit/agora_uikit.dart';
// import 'package:flutter/material.dart';
// import 'package:the_business_square/shared/theme/const.dart';
//
// class VideoCall extends StatefulWidget {
//   @override
//   _VideoCallState createState() => _VideoCallState();
// }
//
// class _VideoCallState extends State<VideoCall> {
//   String channelName = "<--Insert channel name here-->";
//   String token = "<--Insert authentication token here-->";
//   int uid = 0;
//   int? _remoteUid;
//   bool _isJoined = false;
//   late RtcEngine agoraEngine;
//
//   final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>(); // Global key to access the scaffold
//
//   showMessage(String message) {
//     scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(message)));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     setupVideoSDKEngine();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       scaffoldMessengerKey: scaffoldMessengerKey,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Get started with Video Calling')),
//         body: ListView(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
//           children: [
//             Container(
//               height: 240,
//               child: Center(child: _localPreview()),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 240,
//               child: Center(child: _remoteVideo()),
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(child: ElevatedButton(onPressed: _isJoined ? null : join, child: const Text("Join"))),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: ElevatedButton(
//                     onPressed: _isJoined ? () => {leave()} : null,
//                     child: const Text("Leave"),
//                   ),
//                 ),
//               ],
//             ),
//             // Button Row ends
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _localPreview() {
//     if (_isJoined) {
//       return AgoraVideoView(
//         controller: VideoViewController(rtcEngine: agoraEngine, canvas: VideoCanvas(uid: 0)),
//       );
//     } else {
//       return const Text('Join a channel', textAlign: TextAlign.center);
//     }
//   }
//
//   Widget _remoteVideo() {
//     if (_remoteUid != null) {
//       return AgoraVideoView(
//         controller: VideoViewController.remote(
//           rtcEngine: agoraEngine,
//           canvas: VideoCanvas(uid: _remoteUid),
//           connection: RtcConnection(channelId: channelName),
//         ),
//       );
//     } else {
//       String msg = '';
//       if (_isJoined) msg = 'Waiting for a remote user to join';
//       return Text(msg, textAlign: TextAlign.center);
//     }
//   }
//
//   Future<void> setupVideoSDKEngine() async {
//     await [Permission.microphone, Permission.camera].request();
//     agoraEngine = createAgoraRtcEngine();
//     await agoraEngine.initialize(const RtcEngineContext(appId: appId));
//     await agoraEngine.enableVideo();
//
//     agoraEngine.registerEventHandler(
//       RtcEngineEventHandler(
//         onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
//           showMessage("Local user uid:${connection.localUid} joined the channel");
//           setState(() {
//             _isJoined = true;
//           });
//         },
//         onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
//           showMessage("Remote user uid:$remoteUid joined the channel");
//           setState(() {
//             _remoteUid = remoteUid;
//           });
//         },
//         onUserOffline: (RtcConnection connection, int remoteUid, UserOfflineReasonType reason) {
//           showMessage("Remote user uid:$remoteUid left the channel");
//           setState(() {
//             _remoteUid = null;
//           });
//         },
//       ),
//     );
//   }
//
//   void join() async {
//     await agoraEngine.startPreview();
//     ChannelMediaOptions options = const ChannelMediaOptions(
//       clientRoleType: ClientRoleType.clientRoleBroadcaster,
//       channelProfile: ChannelProfileType.channelProfileCommunication,
//     );
//
//     await agoraEngine.joinChannel(token: token, channelId: channelName, options: options, uid: uid);
//   }
//
//   void leave() {
//     setState(() {
//       _isJoined = false;
//       _remoteUid = null;
//     });
//     agoraEngine.leaveChannel();
//   }
//
//   @override
//   void dispose() async {
//     await agoraEngine.leaveChannel();
//     agoraEngine.release();
//     super.dispose();
//   }
// }
