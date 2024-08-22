import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:linkwell/linkwell.dart';
import 'package:the_business_square/chat/data/models/chat_model.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/views/shimmer_box.dart';
import 'package:the_business_square/views/widgets/photo_viewer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../shared/theme/helper.dart';
import '../../../../shared/theme/text_theme.dart';
import '../../data/models/send_msg_model.dart';
import '../../logic/messages_helper.dart';
import '../../logic/msg_bloc/messages_bloc.dart';
import '../../logic/msg_bloc/send_msg_state.dart';

class ChatBubble extends StatefulWidget {
  final SendMsgModel msgModel;
  const ChatBubble({Key? key, required this.msgModel}) : super(key: key);
  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: widget.msgModel.isSender ?? false ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.msgModel.isSender == true ? KColors.accentColorD.withOpacity(.8) : Color(0xffF5F6F7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: Get.width * .8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImageMsgBubble(msgModel: widget.msgModel),
                    FileMsgBubble(msgModel: widget.msgModel),
                    if (widget.msgModel.message != null) TextMsgBubble(msgModel: widget.msgModel),
                  ],
                ),
              ),
              // widget.msgModel.createdAt != null
              //     ? Text(widget.msgModel.timeAgo ?? '', style: KTextStyle.of(context).hint2)
              //     : const Icon(Icons.schedule, size: 12),
            ],
          ),
        ),
      ],
    );
  }
}

class TextMsgBubble extends StatelessWidget {
  const TextMsgBubble({Key? key, required this.msgModel}) : super(key: key);

  final SendMsgModel msgModel;

  @override
  Widget build(BuildContext context) {
    if ((msgModel.message ?? '').isNotEmpty) {
      return LinkWell(
        msgModel.message ?? '',
        style: MsgHelper.isAllEmoji(msgModel.message ?? '') ? KTextStyle.of(context).appBar.copyWith(fontSize: 30) : KTextStyle.of(context).body2,
      );
    } else {
      return const SizedBox();
    }
  }
}

class FileMsgBubble extends StatefulWidget {
  const FileMsgBubble({Key? key, required this.msgModel}) : super(key: key);

  final SendMsgModel msgModel;

  @override
  State<FileMsgBubble> createState() => _FileMsgBubbleState();
}

class _FileMsgBubbleState extends State<FileMsgBubble> {
  @override
  Widget build(BuildContext context) {
    if (widget.msgModel.attachment?.type == MessageType.file) {
      final fileName = widget.msgModel.attachment!.title ?? "";
      final file = widget.msgModel.attachment!.file ?? "";
      return BlocBuilder<MessagesBloc, MessagesState>(
        buildWhen: (previous, current) {
          return current.maybeWhen(orElse: () => false, uploading: (url) => file == url);
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  if (!state.maybeWhen(orElse: () => false, uploading: (url) => file == url)) {
                    await launchUrlString(widget.msgModel.attachment!.file!, mode: LaunchMode.externalApplication);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.file_copy),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        child: Text(fileName, maxLines: 1, style: KTextStyle.of(context).body2),
                      ),
                    ),
                    if (state.maybeWhen(orElse: () => false, uploading: (url) => file == url))
                      const SizedBox(height: 20, width: 20, child: CircularProgressIndicator())
                  ],
                ),
              ),
            ],
          );
        },
      );
    } else {
      return const SizedBox();
    }
  }
}

class ImageMsgBubble extends StatefulWidget {
  const ImageMsgBubble({Key? key, required this.msgModel}) : super(key: key);

  final SendMsgModel msgModel;

  @override
  State<ImageMsgBubble> createState() => _ImageMsgBubbleState();
}

class _ImageMsgBubbleState extends State<ImageMsgBubble> {
  @override
  Widget build(BuildContext context) {
    if (widget.msgModel.attachment?.type == MessageType.image) {
      final img = widget.msgModel.attachment!.file!;
      return BlocBuilder<MessagesBloc, MessagesState>(
        buildWhen: (previous, current) {
          return current.maybeWhen(orElse: () => false, uploading: (url) => img == url);
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(KHelper.btnRadius),
                child: InkWell(
                  onTap: () {
                    if (!state.maybeWhen(orElse: () => false, uploading: (url) => img == url)) {
                      FocusManager.instance.primaryFocus?.unfocus();
                      Get.to(() => KPhotoView(image: img));
                    }
                  },
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: Get.height * .3),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        if (img.isURL)
                          Hero(
                            tag: FileImage(File(img)),
                            child: CachedNetworkImage(
                              imageUrl: img,
                              placeholder: (context, url) => ShimmerBox(height: 100, width: 60),
                            ),
                          )
                        else
                          Image.file(File(img)),
                        if (state.maybeWhen(orElse: () => false, uploading: (url) => img == url))
                          const Positioned(
                            child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator()),
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    } else {
      return const SizedBox();
    }
  }
}
