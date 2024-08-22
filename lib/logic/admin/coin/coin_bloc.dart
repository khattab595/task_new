import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';

import 'coin_state.dart';

@Injectable()
class CoinBloc extends Cubit<CoinState> {
  CoinBloc({required this.addNewCategoryRepoImp}) : super(const CoinState.initial());

  static CoinBloc of(BuildContext context) => BlocProvider.of<CoinBloc>(context);

  final AdminFeatureRepoImp addNewCategoryRepoImp;

  addCoin({required String coin, required String name, required String price}) async {
    try {
      emit(const CoinState.loading());
      final result = await addNewCategoryRepoImp.addCoin(name: name, coin: coin,price:price );
      result.fold(
        (l) {
          debugPrint('================= AddNewCoinBloc Bloc : ${KFailure.toError(l)}');
          emit(CoinState.error(error: l));
        },
        (r) {
          debugPrint('================= AddNewCoinBloc Bloc : ${r.toString()}  ');
          emit(CoinState.success());
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCoinBloc (Catch): ${e.toString()} ');
      emit(CoinState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  getCoin() async {
    try {
      emit(const CoinState.loading());
      final result = await addNewCategoryRepoImp.getCoin();
      result.fold(
        (l) {
          emit(CoinState.error(error: l));
        },
        (r) {
          emit(CoinState.successGet(r));
        },
      );
    } catch (e) {
      debugPrint('================= getCompany Bloc (Catch): ${e.toString()} ');
      emit(CoinState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  deleteCoin({required int id }) async {
    try {
      emit(const CoinState.loading());
      final result = await addNewCategoryRepoImp.deleteCoin(id: id);
      result.fold(
            (l) {
          emit(CoinState.error(error: l));
        },
            (r) async {
          emit(CoinState.successDelete());
           await  getCoin();
        },
      );
    } catch (e) {
      debugPrint('================= deleteCoin Bloc (Catch): ${e.toString()} ');
      emit(CoinState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
