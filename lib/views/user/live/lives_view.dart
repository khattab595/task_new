import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_business_square/di/injection_container.dart';
import 'package:the_business_square/logic/add_user_to_live/add_user_to_live_bloc.dart';
import 'package:the_business_square/logic/add_user_to_live/add_user_to_live_state.dart';
import 'package:the_business_square/logic/get_live_streams/get_live_streams_bloc.dart';
import 'package:the_business_square/logic/get_live_streams/get_live_streams_state.dart';
import 'package:the_business_square/shared/api_client/endpoints.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/shared/theme/helper.dart';
import 'package:the_business_square/views/user/auth/forget_password/forget_password_view.dart';
import 'package:the_business_square/views/user/live/live_s.dart';
import 'package:the_business_square/views/widgets/load_more_wrapper.dart';
import 'package:the_business_square/views/widgets/loading/loading_overlay.dart';

import '../../../shared/theme/text_theme.dart';
import 'test/new_meeting.dart';

class LivesGridView extends StatelessWidget {
  const LivesGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<GetLiveStreamsBloc>()..get_live_streams(),
        child: Column(
          children: [
            SizedBox(height: topPad + 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: BackWithTitle(title: Tr.get.liveStream),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(height: 30, color: Color(0x1A007AFF)),
            ),
            Expanded(
              child: BlocBuilder<GetLiveStreamsBloc, GetLiveStreamsState>(
                builder: (context, state) {
                  final list = GetLiveStreamsBloc.of(context).lives;
                  return KLoadingOverlay(
                    isLoading: state is GetLiveStreamsStateLoading,
                    child: BlocProvider(
                      create: (context) => getIt<AddUserToLiveBloc>(),
                      child: Builder(builder: (context) {
                        return LoadMoreWrapper(
                          crossAxisCount: 1,
                          isLoadingMore: state is GetLiveStreamsStateLoadMore,
                          onLoadMore: () => GetLiveStreamsBloc.of(context).get_live_streams(loadMore: true),
                          onRefresh: () => GetLiveStreamsBloc.of(context).get_live_streams(loadMore: false),
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            final item = list[index];
                            return GestureDetector(
                              onTap: () {
                                if (item.channel != null) AddUserToLiveBloc.of(context).addUsr(item.id);
                              },
                              child: BlocConsumer<AddUserToLiveBloc, AddUserToLiveState>(
                                listener: (context, addState) {
                                  addState.whenOrNull(
                                    success: () {
                                      Get.to(() => LiveStreaming(broadcastMode: BroadcastMode.watching, liveStream: item));
                                    },
                                    error: (error) {
                                      KHelper.showSnackBar(Tr.get.youDoNotHaveEnoughBalance);
                                    },
                                  );
                                },
                                builder: (context, addState) {
                                  bool isFree = item.cost == 0;
                                  return Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 200,
                                            margin: EdgeInsets.symmetric(vertical: 5),
                                            width: MediaQuery.of(context).size.width,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(KHelper.btnRadius * 2),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  item.image != null ? (KEndPoints.baseUrlStorage + item.image!) : dummyNetImg,
                                                ),
                                                fit: BoxFit.cover,
                                                colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                                              ),
                                            ),
                                          ),
                                          if (addState is AddUserToLiveStateLoading && item.id == AddUserToLiveBloc.of(context).last_id)
                                            Center(child: CircularProgressIndicator(color: Colors.white))
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Text(
                                            (item.title ?? ''),
                                            style: KTextStyle.of(context).appBar.copyWith(color: Color(0xff002036)),
                                          ),
                                          Spacer(),
                                          SizedBox(width: 10),
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xCC002036), width: 1),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "@${item.channel}",
                                              style: TextStyle(color: Color(0xCC002036), fontSize: 14),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                            decoration: BoxDecoration(
                                              border: Border.all(color: KColors.accentColorD, width: 1),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              "${isFree ? "Free Live" : "Premium Live"}",
                                              style: TextStyle(
                                                color: isFree ? KColors.accentColorD : Color(0xff004187),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                    ],
                                  );
                                },
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff004187),
        shape: CircleBorder(),
        onPressed: () {
          Get.to(() => NewMeeting());
        },
        child: Icon(Icons.live_tv_rounded, color: KColors.accentColorD, size: 30),
      ),
    );
  }
}
