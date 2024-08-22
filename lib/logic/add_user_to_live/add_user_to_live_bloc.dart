import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/live_stream/live_stream_repo.dart';
import '../../shared/error/failures.dart';
import 'add_user_to_live_state.dart';

@injectable
class AddUserToLiveBloc extends Cubit<AddUserToLiveState> {
  AddUserToLiveBloc({required this.getLiveStreamsRepoImp}) : super(const AddUserToLiveState.initial());

  static AddUserToLiveBloc of(BuildContext context) => BlocProvider.of<AddUserToLiveBloc>(context);

  final LiveStreamRepoImp getLiveStreamsRepoImp;

  int? last_id = -1;

  addUsr(int? id) async {
    last_id = id;
    try {
      emit(const AddUserToLiveState.loading());
      final result = await getLiveStreamsRepoImp.add_user_to_live_stream(id);
      result.fold(
        (l) {
          debugPrint('================= AddUserToLive Bloc : ${KFailure.toError(l)}');
          emit(AddUserToLiveState.error(error: l));
        },
        (r) {
          debugPrint('================= AddUserToLive Bloc : ${r.toString()}  ');
          emit(AddUserToLiveState.success());
        },
      );
    } catch (e) {
      debugPrint('================= AddUserToLive Bloc (Catch): ${e.toString()} ');
      emit(const AddUserToLiveState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
    last_id = -1;
  }
}
