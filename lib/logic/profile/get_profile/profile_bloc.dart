import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/models/auth/Data.dart';
import 'package:the_business_square/data/repository/profile/user_repo.dart';
import 'package:the_business_square/logic/profile/get_profile/profile_state.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'package:the_business_square/shared/localization/trans.dart';


@injectable
class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc({required this.profileRepoImp}) : super(const ProfileState.initial());

  static ProfileBloc of(BuildContext context) => BlocProvider.of<ProfileBloc>(context);

  final ProfileRepoImp profileRepoImp;
  UserData? user = KStorage.i.getUser;
  fetchUser() async {
    try {
      emit(const ProfileState.loading());
      final result = await profileRepoImp.fetchUserData();
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc (Failure) : ${KFailure.toError(l)}');
          emit(ProfileState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ProfileBloc : ${r.toString()}  ');
          KStorage.i.setUser(r.data);
          debugPrint('================= coinsDta : ${r.data!.coins}  ');
          emit(ProfileState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(ProfileState.error(error: Tr.get.try_again));
      rethrow;
    }
  }


  changeDetailsProfile(
      {required String nick_name, required String company_name}) async {
    try {
      emit(const ProfileState.loading());
      final result = await profileRepoImp.updateCompanyNickName(
          nick_name: nick_name,company_name: company_name
      );
      result.fold(
            (l) {
          debugPrint('================= changeDetailsProfile : ${KFailure.toError(l)}');
          emit(ProfileState.error(error: Tr.get.try_again));
        },
            (r) {
          debugPrint('================= changeDetailsProfile : ${r.toString()}  ');
          fetchUser();
          emit(ProfileState.successEditDetails(r));
        },
      );
    } catch (e) {
      debugPrint('================= changeDetailsProfile (Catch): ${e.toString()} ');
      emit(ProfileState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

}
