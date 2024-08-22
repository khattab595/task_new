// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:the_business_square/shared/theme/assets.dart';
import 'package:the_business_square/shared/theme/colors.dart';

import '../../logic/rooms_bloc/chat_rooms_bloc.dart';
import '../../logic/rooms_bloc/chat_state.dart';
import '../chat_view.dart';

class KChatIconButton extends StatelessWidget {
  final String? userName;
  final String? image;
  final int? userId;

  const KChatIconButton({super.key, required this.userName, this.image, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatRoomsBloc, ChatRoomsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return InkWell(
              onTap: () {
                Get.to(() => ChatView(userId: userId, userName: userName, image: image));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(KAssets.chat, color: KColors.accentColorD),
              ),
            );
          },
        );
      },
    );
  }
}
