import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/notfication/Notofication_response.dart';
import '../../data/repository/notification/notofication_repo.dart';
import '../../shared/error/failures.dart';
import '../../shared/theme/logger.dart';
import 'get_notifications_state.dart';

@injectable
class GetNotificationsBloc extends Cubit<GetNotificationsState> {
  GetNotificationsBloc(this.notificationsRepoImp) : super(const GetNotificationsState.initial());

  static GetNotificationsBloc of(BuildContext context) => BlocProvider.of<GetNotificationsBloc>(context);
  NotoficationResponse notificationsResponse = NotoficationResponse(data: []);

  final NotificationsRepoImp notificationsRepoImp;
  bool get no_more => notificationsResponse.pagination?.total == notificationsResponse.data?.length;
  int page = 1;

  fetchNotifications({
    bool loadMore = false,
  }) async {
    if (no_more && loadMore) return;
    if (loadMore) {
      page++;
      emit(const GetNotificationsState.loadMore());
    } else {
      page = 1;
      emit(const GetNotificationsState.loading());
    }

    try {
      final result = await notificationsRepoImp.fetchNotifications(page: page);
      result.fold(
        (l) {
          debugPrint('================= GetPosts Bloc : ${KFailure.toError(l)}');
          emit(GetNotificationsState.error(error: l));
        },
        (r) {
          notificationsResponse =
              loadMore ? notificationsResponse.copyWith(data: notificationsResponse.data?..addAll(r.data ?? []), pagination: r.pagination) : r;
          printMap(r.pagination?.toJson());

          debugPrint('================= GetPosts Bloc : ${r.toString()}  ');
          emit(const GetNotificationsState.success());
        },
      );
    } catch (e) {
      debugPrint('================= GetPosts Bloc (Catch): ${e.toString()} ');
      emit(const GetNotificationsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }
}
