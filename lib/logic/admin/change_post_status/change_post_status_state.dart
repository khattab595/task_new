import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/shared/error/failures.dart';
part 'change_post_status_state.freezed.dart';

@freezed
abstract class ChangePostStatusState with _$ChangePostStatusState{
  const factory ChangePostStatusState.loading() = ChangePostStatusStateLoading;
  const factory ChangePostStatusState.success() = ChangePostStatusStateSuccess;
  const factory ChangePostStatusState.error({required KFailure error}) = ChangePostStatusStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs