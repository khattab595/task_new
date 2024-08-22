import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../data/repository/live_stream/live_stream_repo.dart';
import '../../shared/error/failures.dart';
import 'end_live_state.dart';

@injectable
class EndLiveBloc extends Cubit<EndLiveState> {
  EndLiveBloc({required this.getLiveStreamsRepoImp}) : super(const EndLiveState.initial());

  static EndLiveBloc of(BuildContext context) => BlocProvider.of<EndLiveBloc>(context);

  final LiveStreamRepoImp getLiveStreamsRepoImp;

  endLive(int? id) async {
    try {
      emit(const EndLiveState.loading());
      final result = await getLiveStreamsRepoImp.endLive(id);
      result.fold(
        (l) {
          debugPrint('================= EndLive Bloc : ${KFailure.toError(l)}');
        },
        (r) {
          debugPrint('================= EndLive Bloc : ${r.toString()}  ');
        },
      );
    } catch (e) {
      debugPrint('================= EndLive Bloc (Catch): ${e.toString()} ');
    }
  }
}
