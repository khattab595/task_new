import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/models/live_stream/live_stream.dart';
import 'package:the_business_square/data/repository/live_stream/live_stream_repo.dart';
import '../../shared/error/failures.dart';
import 'get_live_streams_state.dart';

@injectable
class GetLiveStreamsBloc extends Cubit<GetLiveStreamsState> {
  GetLiveStreamsBloc({required LiveStreamRepoImp getLiveStreamsRepoImp})
      : _getLiveStreamsRepoImp = getLiveStreamsRepoImp,
        super(const GetLiveStreamsState.initial());

  static GetLiveStreamsBloc of(BuildContext context) => BlocProvider.of<GetLiveStreamsBloc>(context);

  final LiveStreamRepoImp _getLiveStreamsRepoImp;

  LiveStreamsResponse? _get_live_streamsModel = LiveStreamsResponse(data: []);
  List<LiveStream> get lives => _get_live_streamsModel?.data ?? [];

  bool get _no_more => _get_live_streamsModel?.pagination?.total == _get_live_streamsModel?.data?.length;
  int page = 1;
  get_live_streams({bool loadMore = false}) async {
    if (_no_more && loadMore) return;
    if (loadMore) {
      page++;
      emit(const GetLiveStreamsState.loadMore());
    } else {
      page = 1;
      emit(const GetLiveStreamsState.loading());
    }

    try {
      final result = await _getLiveStreamsRepoImp.get_live_stream();
      result.fold(
        (l) {
          debugPrint('================= GetLiveStreams Bloc : ${KFailure.toError(l)}');
          emit(GetLiveStreamsState.error(error: l));
        },
        (r) {
          _get_live_streamsModel =
              loadMore ? _get_live_streamsModel?.copyWith(data: _get_live_streamsModel?.data?..addAll(r.data ?? []), pagination: r.pagination) : r;

          debugPrint('================= GetLiveStreams Bloc : ${r.toString()}  ');
          emit(const GetLiveStreamsState.success());
        },
      );
    } catch (e) {
      debugPrint('================= GetLiveStreams Bloc (Catch): ${e.toString()} ');
      emit(const GetLiveStreamsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }
}
