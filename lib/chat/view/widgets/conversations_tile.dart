import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_business_square/chat/logic/rooms_bloc/chat_rooms_bloc.dart';
import 'package:the_business_square/shared/api_client/endpoints.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:timeago/timeago.dart';

import '../../../shared/theme/date_formatter.dart';
import '../../../views/widgets/image_builder.dart';
import '../../data/models/chat_rooms_model.dart';
import '../chat_view.dart';

class ConversationTile extends StatelessWidget {
  final RoomContact chatRoom;
  const ConversationTile({Key? key, required this.chatRoom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime date = DateFormatter.dateFromString(chatRoom.maxCreatedAt, pattern: DateFormatter.DATE_TIME_STAMP2);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        title: Text((chatRoom.name?.capitalizeFirst ?? ''), style: TextStyle(fontWeight: FontWeight.w600)),
        onTap: () {
          ChatRoomsBloc.of(context).removeUnReadd(chatRoom.id.toString());
          Get.to(() => ChatView(userId: chatRoom.id, userName: chatRoom.name, image: chatRoom.image));
        },
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: CircleAvatar(
            radius: 26,
            backgroundColor: chatRoom.image != null ? Colors.blue : KColors.accentColorD,
            child: chatRoom.image != null
                ? kBuildCircleImage("${KEndPoints.baseUrlStorage}${chatRoom.image}", shape: BoxShape.circle, width: 52, height: 52)
                : Icon(Icons.person, color: Colors.white, size: 30),
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(format(date)),
            SizedBox(height: 5),
            if (ChatRoomsBloc.of(context).hasUnReadd(chatRoom.id.toString()))
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
          ],
        ),
        subtitle: Text(chatRoom.jobTitle?.capitalizeFirst ?? "", maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
