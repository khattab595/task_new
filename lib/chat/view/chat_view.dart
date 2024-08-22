import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_business_square/chat/data/repo/chat_repo.dart';
import 'package:the_business_square/di/injection_container.dart';
import 'package:the_business_square/extensions.dart';
import 'package:the_business_square/shared/theme/assets.dart';

import '../../logic/pick_image/pick_image_cubit.dart';
import '../../shared/api_client/endpoints.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/helper.dart';
import '../../shared/theme/text_theme.dart';
import '../../views/widgets/image_builder.dart';
import '../../views/widgets/loading/loading_overlay.dart';
import '../logic/msg_bloc/messages_bloc.dart';
import '../logic/msg_bloc/send_msg_state.dart';
import '../logic/rooms_bloc/chat_rooms_bloc.dart';
import '../logic/rooms_bloc/chat_state.dart';
import 'widgets/chat_bubble.dart';
import 'widgets/chat_text_field.dart';

class ChatView extends StatefulWidget {
  final String? userName;
  final String? image;
  final int? userId;

  const ChatView({Key? key, required this.userName, this.image, required this.userId}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final GlobalKey textFKey = GlobalKey();
  double get tfHeight {
    double h = 73.0;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final obj = textFKey.currentContext?.findRenderObject();
      RenderBox? box;
      if (obj != null) {
        box = obj as RenderBox;
        h = box.size.height;
      }
    });
    return h;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PickImageCubit()),
        BlocProvider(create: (context) => MessagesBloc(chatRepoImp: getIt<ChatRepoImp>())..get_all_msg(widget.userId)),
      ],
      child: Builder(builder: (context) {
        return BlocListener<ChatRoomsBloc, ChatRoomsState>(
          listener: (context, roomState) {
            roomState.whenOrNull(
              newMessage: (msgModel) {
                MessagesBloc.of(context).from_server(msgModel);
              },
            );
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              leading: FittedBox(
                fit: BoxFit.scaleDown,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                    decoration: BoxDecoration(color: Color(0xffF4F4F5), borderRadius: BorderRadius.circular(6)),
                    child: Transform.flip(
                      flipX: Tr.isAr,
                      child: SvgPicture.asset(KAssets.back_btn, width: 12),
                    ),
                  ),
                ),
              ),
              title: Row(
                children: [
                  if (widget.image != null)
                    CircleAvatar(
                      radius: 18,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: kBuildCircleImage("${KEndPoints.baseUrlStorage}${widget.image}", shape: BoxShape.circle),
                      ),
                    ),
                  SizedBox(width: 10),
                  Text(
                    widget.userName?.capitalize ?? "",
                    style: KTextStyle.of(context).appBar,
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      BlocBuilder<MessagesBloc, MessagesState>(
                        buildWhen: (previous, current) {
                          return current.maybeWhen(orElse: () => true, showRecorder: (v) => false, updateDate: (v) => false);
                        },
                        builder: (context, state) {
                          return Expanded(
                            child: KLoadingOverlay(
                              isLoading: state is SendMsgStateLoading,
                              child: ListView.builder(
                                itemCount: MessagesBloc.of(context).chatModel?.messages?.length ?? 0,
                                reverse: true,
                                addAutomaticKeepAlives: true,
                                itemBuilder: (context, index) {
                                  final msg = MessagesBloc.of(context).chatModel!.messages![index];
                                  return ChatBubble(msgModel: msg);
                                },
                              ),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<MessagesBloc, MessagesState>(
                        builder: (context, state) {
                          return ChatTextField(key: textFKey, hideSend: false);
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Positioned(
                    top: 5,
                    child: BlocBuilder<MessagesBloc, MessagesState>(
                      buildWhen: (previous, current) {
                        return current.maybeWhen(updateDate: (g) => true, orElse: () => false);
                      },
                      builder: (context, state) {
                        if (state.whenOrNull(updateDate: (groupedDate) => groupedDate) != null) {
                          return Container(
                            decoration: KHelper.of(context).elevatedBox,
                            padding: const EdgeInsets.all(8),
                            child: Text(state.whenOrNull(updateDate: (groupedDate) => groupedDate) ?? '', style: KTextStyle.of(context).hint),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
