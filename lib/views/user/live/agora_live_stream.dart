// Instantiate the client
// import 'package:agora_uikit/agora_uikit.dart';
import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_business_square/app.dart';

class AgoraLiveStreaming extends StatefulWidget {
  AgoraLiveStreaming({Key? key, required this.client, required this.onDisconnect}) : super(key: key);
  final AgoraClient client;
  final VoidCallback onDisconnect;

  @override
  State<AgoraLiveStreaming> createState() => _AgoraLiveStreamingState();
}

class _AgoraLiveStreamingState extends State<AgoraLiveStreaming> {
  @override
  void dispose() {
    widget.client.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final tPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: tPadding),
        child: widget.client.isInitialized
            ? Stack(
                children: [
                  AgoraVideoViewer(
                    client: widget.client,
                    floatingLayoutMainViewPadding: EdgeInsets.zero,
                    floatingLayoutContainerHeight: height,
                    floatingLayoutContainerWidth: width,
                    showNumberOfUsers: true,
                    floatingLayoutSubViewPadding: EdgeInsets.zero,
                    enableHostControls: true,
                    layoutType: Layout.grid,
                  ),
                  AgoraVideoButtons(
                    client: widget.client,
                    verticalButtonPadding: 8,
                    onDisconnect: () {
                      widget.onDisconnect.call();
                      Get.to(()=>Wrapper());
                    },
                  ),
                ],
              )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

