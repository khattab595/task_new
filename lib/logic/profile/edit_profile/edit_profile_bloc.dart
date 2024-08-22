import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/profile/user_repo.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import '../../../data/models/auth/uodate_profile_prams.dart';
import '../../../shared/error/failures.dart';
import 'edit_profile_state.dart';

@injectable
class EditProfileBloc extends Cubit<EditProfileState> {
  EditProfileBloc({required this.editProfileRepoImp}) : super(const EditProfileState.loading());

  static EditProfileBloc of(BuildContext context) => BlocProvider.of<EditProfileBloc>(context);

  final ProfileRepoImp editProfileRepoImp;
  UpdateProfileParams updateProfileParams = UpdateProfileParams();

  update() async {
    try {
      emit(const EditProfileState.loading());
      final result = await editProfileRepoImp.updateProfile(updateProfileParams.toJson());
      result.fold(
        (l) {
          debugPrint('================= EditProfile Bloc : ${KFailure.toError(l)}');
          emit(EditProfileState.error(error: l));
        },
        (r) {
          debugPrint('================= EditProfile Bloc : ${r.toString()}  ');
          KStorage.i.setUser(r.data);
          emit(  EditProfileState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= EditProfile Bloc (Catch): ${e.toString()} ');
      emit(EditProfileState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  // setImage( ) async {
  //   final picker = ImagePicker();
  //    await picker.pickImage(source: ImageSource.gallery);
  // }
  setImage(File? file) async {
    if (file != null) updateProfileParams = updateProfileParams.copyWith(image: file.path);
  }

  setName(String? val) {
    updateProfileParams = updateProfileParams.copyWith(name: val);
  }

  setPhone(String? val) {
    updateProfileParams = updateProfileParams.copyWith(phone: val);
  }

  setEmailRegister(String? val) {
    updateProfileParams = updateProfileParams.copyWith(email: val);
  }

  setJobTitle(String? val) {
    updateProfileParams = updateProfileParams.copyWith(jobTitle: val);
  }

  setMethode() {
    updateProfileParams = updateProfileParams.copyWith(method: "patch");
  }
}
