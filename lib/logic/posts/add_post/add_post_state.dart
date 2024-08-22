// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/posts/addpost/Add_post_model.dart';

part 'add_post_state.freezed.dart';

@freezed
class AddPostState with _$AddPostState {
  const factory AddPostState.initial() = AddPostStateInitial;

  const factory AddPostState.loading() =AddPostStateLoading;
  const factory AddPostState.error({required String error}) = AddPostStateError;



  const factory AddPostState.successAddPost(AddPostModel addPostModel) = AddPostStateSuccess;
}
// flutter pub run build_runner watch --delete-conflicting-outputs