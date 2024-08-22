import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/views/widgets/loading/loading_overlay.dart';

import '../../shared/theme/text_theme.dart';
import '../logic/rooms_bloc/chat_rooms_bloc.dart';
import '../logic/rooms_bloc/chat_state.dart';
import 'widgets/conversations_tile.dart';

class ConversationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(Tr.get.chat, style: KTextStyle.of(context).reAppBar.copyWith(color: Colors.black)),
      ),
      body: BlocBuilder<ChatRoomsBloc, ChatRoomsState>(
        builder: (context, state) {
          final rooms = ChatRoomsBloc.of(context).roomsModel?.contacts;
          return KRequestOverlay(
            isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
            error: state.whenOrNull(error: (error) => error),
            onTryAgain: state.whenOrNull(error: (error) => ChatRoomsBloc.of(context).get_all_rooms),
            child: RefreshIndicator(
              onRefresh: () async => ChatRoomsBloc.of(context).get_all_rooms(),
              child: ChatRoomsBloc.of(context).roomsModel!.contacts!.isEmpty
                  ? SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          Icon(Icons.chat),
                          const SizedBox(height: 15),
                          Text(Tr.get.nothing_to_show, style: KTextStyle.of(context).title),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(top: 20, bottom: 100),
                      itemCount: rooms?.length ?? 0,
                      itemBuilder: (context, index) {
                        return ConversationTile(chatRoom: rooms![index]);
                      },
                    ),
            ),
          );
        },
      ),
    );
  }
}
