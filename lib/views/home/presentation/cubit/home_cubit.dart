import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/views/home/data/model/HomeModel.dart';

import '../../../../shared/error/failures.dart';
import '../../../../shared/localization/trans.dart';
import '../../data/repositoreis/home_repo.dart';

part 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepoImp}) : super(HomeInitial());

  static HomeCubit of(BuildContext context) =>
      BlocProvider.of<HomeCubit>(context);

  final HomeRepoImp homeRepoImp;

  fetchHome() async {
    try {
      emit(Loading());
      final result = await homeRepoImp.fetchHome();
      result.fold(
        (l) {
          emit(Error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= Home Bloc : ${r.toString()}  ');
          final data = getHomeModelFromJson(jsonEncode(r));
          emit(FetchHomeSuccess(homeData: data));
        },
      );
    } catch (e) {
      debugPrint('================= Home Bloc (Catch): ${e.toString()} ');
      emit(Error(error: Tr.get.try_again));
      rethrow;
    }
  }
}
