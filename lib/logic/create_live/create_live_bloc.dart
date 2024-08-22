import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/live_stream/live_stream_repo.dart';
import '../../shared/error/failures.dart';
import 'create_live_state.dart';

@injectable
class CreateLiveBloc extends Cubit<CreateLiveState> {
  CreateLiveBloc({required this.createLiveRepoImp}) : super(const CreateLiveState.initial());

  static CreateLiveBloc of(BuildContext context) => BlocProvider.of<CreateLiveBloc>(context);

  final LiveStreamRepoImp createLiveRepoImp;

  add(Map<String, dynamic> map) async {
    try {
      emit(const CreateLiveState.loading());
      final result = await createLiveRepoImp.add_live_stream(map);
      result.fold(
        (l) {
          debugPrint('================= CreateLive Bloc : ${KFailure.toError(l)}');
          emit(CreateLiveState.error(error: l));
        },
        (r) {
          debugPrint('================= CreateLive Bloc : ${r.toString()}  ');
          emit(CreateLiveState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= CreateLive Bloc (Catch): ${e.toString()} ');
      emit(const CreateLiveState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }
}
