import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../data/models/notfication/Data.dart';
import '../../../logic/core/settings/settings_cubit.dart';
import '../../../logic/get_notifications/get_notifications_bloc.dart';
import '../../../logic/get_notifications/get_notifications_state.dart';
import '../../../shared/error/failures.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/assets.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/date_formatter.dart';
import '../../../shared/theme/text_theme.dart';
import '../../widgets/load_more_wrapper.dart';
import '../../widgets/loading/loading.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: KColors.accentColorD),
        centerTitle: true,
        title: Text(Tr.get.notification, style: KTextStyle.of(context).reAppBar.copyWith(color: Colors.black)),
      ),
      body: BlocBuilder<GetNotificationsBloc, GetNotificationsState>(
        builder: (context, state) {
          return state.when(
            error: (error) => Center(child: Text(KFailure.toError(error))),
            initial: () {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  SvgPicture.asset(KAssets.noData, width: 200, height: 150),
                  SizedBox(height: 20),
                  Text(Tr.get.no_posts, style: KTextStyle.of(context).reBody),
                ],
              );
            },
            loading: () {
              return Padding(
                padding: const EdgeInsets.only(top: 150),
                child: CircularLoaderWidget(),
              );
            },
            loadMore: () => ListNotificationsData(items: GetNotificationsBloc.of(context).notificationsResponse.data ?? [], loadingMore: true),
            success: () => ListNotificationsData(items: GetNotificationsBloc.of(context).notificationsResponse.data ?? [], loadingMore: false),
          );
        },
      ),
    );
  }
}

class ListNotificationsData extends StatelessWidget {
  const ListNotificationsData({
    Key? key,
    required this.items,
    required this.loadingMore,
  }) : super(key: key);
  final List<NotoficationData> items;
  final bool loadingMore;
  @override
  Widget build(BuildContext context) {
    return LoadMoreWrapper(
      crossAxisCount: 1,
      isLoadingMore: loadingMore,
      onLoadMore: () async {
        await GetNotificationsBloc.of(context).fetchNotifications(loadMore: true);
      },
      onRefresh: () async {
        await GetNotificationsBloc.of(context).fetchNotifications(loadMore: false);
      },
      itemCount: GetNotificationsBloc.of(context).notificationsResponse.data?.length ?? 0,
      itemBuilder: (context, index) {
        var post = GetNotificationsBloc.of(context).notificationsResponse.data!;
        DateTime date = DateFormatter.dateFromString(post[index].createdAt);

        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(post[index].image ?? ''),
          ),
          title: Text(
            Tr.isAr ? post[index].titleAr ?? '' : post[index].titleEn ?? '',
            style: KTextStyle.of(context).appBar.copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            SettingsBloc.of(context).locale == const Locale('ar') ? post[index].bodyAr ?? '' : post[index].bodyEn ?? '',
            // style: KTextStyle.of(context).body.copyWith(fontSize: 14, color: Colors.black),
          ),
          trailing: SizedBox(
            width: 80,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                timeago.format(date, locale: Tr.isAr ? "ar" : "en"),
                style: KTextStyle.of(context).title.copyWith(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
        );
      },
    );
  }
}
