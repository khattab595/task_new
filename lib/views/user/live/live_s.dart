import 'dart:math';

import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:the_business_square/data/models/live_stream/live_stream.dart';
import 'package:the_business_square/shared/cache/storage.dart';

import '../../../data/repository/live_stream/live_stream_repo.dart';
import '../../../di/injection_container.dart';
import 'agora_live_stream.dart';

const appId = 'deebfdea627b416fa9a1cb82e6dc4ad8';

class LiveStreaming extends StatefulWidget {
  const LiveStreaming({required this.broadcastMode, required this.liveStream});

  final BroadcastMode broadcastMode;
  final LiveStream liveStream;

  @override
  _LiveStreamingState createState() => _LiveStreamingState();
}

enum BroadcastMode {
  none,
  watching,
  broadcasting,
}

class _LiveStreamingState extends State<LiveStreaming> {
  late AgoraClient _agoraClient;
  late BroadcastMode _broadcastMode;
  int uid = KStorage.i.getUser?.id ?? Random().nextInt(9999);

  @override
  void initState() {
    _broadcastMode = widget.broadcastMode;
    switch (_broadcastMode) {
      case BroadcastMode.none:
        break;
      case BroadcastMode.watching:
        _joinLiveStream();
        break;
      case BroadcastMode.broadcasting:
        _startBroadcasting();
        break;
    }
    super.initState();
  }

  @override
  void dispose() {
    if (_agoraClient.isInitialized) {
      _agoraClient.release();
    }
    super.dispose();
  }

  AgoraConnectionData get agoraConnectionData => AgoraConnectionData(appId: appId, channelName: widget.liveStream.channel!, uid: uid);

  AgoraRtcEventHandlers get eventHandler => AgoraRtcEventHandlers(
        onJoinChannelSuccess: (connection, int elapsed) {
          showMessage("Local user uid:${connection.localUid} joined the channel");
        },
        onUserJoined: (connection, int remoteUid, int elapsed) {
          showMessage("Remote user uid:$remoteUid joined the channel");
        },
        onUserOffline: (connection, int remoteUid, UserOfflineReasonType reason) {
          showMessage("Remote user uid:$remoteUid left the channel");
        },
      );

  Future<void> _joinLiveStream() async {
    _agoraClient = AgoraClient(
      agoraConnectionData: agoraConnectionData,
      agoraEventHandlers: eventHandler,
      agoraChannelData: AgoraChannelData(
        channelProfileType: ChannelProfileType.channelProfileCloudGaming,
        clientRoleType: ClientRoleType.clientRoleAudience,
      ),
    );

    await _agoraClient.initialize();

    setState(() => _broadcastMode = BroadcastMode.watching);
  }

  Future<void> _startBroadcasting() async {
    _agoraClient = AgoraClient(
      agoraConnectionData: agoraConnectionData,
      agoraEventHandlers: eventHandler,
      agoraChannelData: AgoraChannelData(
        channelProfileType: ChannelProfileType.channelProfileLiveBroadcasting,
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
      ),
    );

    await _agoraClient.initialize();

    setState(() => _broadcastMode = BroadcastMode.broadcasting);
  }

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>(); // Global key to access the scaffold

  showMessage(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        getIt<LiveStreamRepoImp>().endLive(widget.liveStream.id);
      },
      child: Scaffold(
        key: scaffoldMessengerKey,
        body: _broadcastMode == BroadcastMode.none
            ? Center(child: CircularProgressIndicator())
            : AgoraLiveStreaming(
                client: _agoraClient,
                onDisconnect: () {
                  if (_broadcastMode == BroadcastMode.broadcasting) {
                    getIt<LiveStreamRepoImp>().endLive(widget.liveStream.id);
                  }
                },
              ),
      ),
    );
  }
}
