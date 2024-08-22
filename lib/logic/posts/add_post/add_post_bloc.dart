import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/theme/logger.dart';

import '../../../data/models/posts/addpost/Add_post_prams.dart';
import '../../../data/repository/posts/posts_repo.dart';
import '../../../shared/error/failures.dart';
import '../../../shared/localization/trans.dart';
import 'add_post_state.dart';

@injectable
class AddPostBloc extends Cubit<AddPostState> {
  final PostsRepoImp postsRepoImp;
  AddPostBloc({required this.postsRepoImp}) : super(const AddPostState.initial());

  static AddPostBloc of(BuildContext context) => BlocProvider.of<AddPostBloc>(context);

// add post
  AddPostPrams addPostPrams = AddPostPrams();

  addPost() async {
    try {
      printMap(addPostPrams.toJson());
      emit(const AddPostState.loading());
      final result = await postsRepoImp.addPost(addPostPrams);
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc : ${KFailure.toError(l)}');
          emit(AddPostState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ProfileBloc : ${r.toString()}  ');
          emit(AddPostState.successAddPost(r));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(AddPostState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  setTitleAds(String? val) {
    addPostPrams = addPostPrams.copyWith(title: val);
  }

  setCategoryId(String? val) {
    addPostPrams = addPostPrams.copyWith(categoryId: val);
  }

  setCountry(String? val) {
    addPostPrams = addPostPrams.copyWith(country: val);
  }

  String? getCountry() {
    return addPostPrams.country;
  }

  setDetailsAddress(String? val) {
    addPostPrams = addPostPrams.copyWith(detailsAddress: val);
  }

  setEndDate(String? val) {
    addPostPrams = addPostPrams.copyWith(endDate: val);
  }

  setEndTime(String? val) {
    addPostPrams = addPostPrams.copyWith(endTime: '${val?.split(' ').last}:00');
  }

  setStartDate(String? val) {
    addPostPrams = addPostPrams.copyWith(startDate: val);
  }

  setStartTime(String? val) {
    addPostPrams = addPostPrams.copyWith(startTime: '${val?.split(' ').last}:00');
  }

  setDescription(String? val) {
    addPostPrams = addPostPrams.copyWith(description: val);
  }

  setImage(File? file) async {
    if (file != null) addPostPrams = addPostPrams.copyWith(image: file.path);
  }

  setImageId(File? file) async {
    if (file != null) addPostPrams = addPostPrams.copyWith(imageId: file.path);
  }

  setPhone(String? val) {
    addPostPrams = addPostPrams.copyWith(phone: val);
  }
}
