import 'package:freezed_annotation/freezed_annotation.dart';

 import '../../../shared/error/failures.dart';
part 'delete_post_state.freezed.dart';

@freezed
abstract class DeletePostState with _$DeletePostState {
  const factory DeletePostState.loading() = DeletePostStateLoading;
  const factory DeletePostState.success( ) = DeletePostStateSuccess;
  const factory DeletePostState.error({required KFailure error}) = DeletePostStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs