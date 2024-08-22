import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'add_nik_name_state.dart';

@Injectable()
class AddNikNameBloc extends Cubit<AddNikNameState> {
  AddNikNameBloc({required this.addNewCategoryRepoImp}) : super(const AddNikNameState.initial());

  static AddNikNameBloc of(BuildContext context) => BlocProvider.of<AddNikNameBloc>(context);

  final AdminFeatureRepoImp addNewCategoryRepoImp;

  addNickName({required String coin, required String name}) async {
    try {
      emit(const AddNikNameState.loading());
      final result = await addNewCategoryRepoImp.addNickName(name: name, coin: coin);
      result.fold(
        (l) {
          debugPrint('================= AddNewCategory Bloc : ${KFailure.toError(l)}');
          emit(AddNikNameState.error(error: l));
        },
        (r) {
          debugPrint('================= AddNewCategory Bloc : ${r.toString()}  ');
          emit(AddNikNameState.success());
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(AddNikNameState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  getNikName() async {
    try {
      emit(const AddNikNameState.loading());
      final result = await addNewCategoryRepoImp.getNickName();
      result.fold(
        (l) {
          emit(AddNikNameState.error(error: l));
        },
        (r) {
          emit(AddNikNameState.successGet(r));
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(AddNikNameState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
  deleteNikName({required int id }) async {
    try {
      emit(const AddNikNameState.loading());
      final result = await addNewCategoryRepoImp.deleteNickName(id: id);
      result.fold(
            (l) {
          emit(AddNikNameState.error(error: l));
        },
            (r) async {
          emit(AddNikNameState.successDelete());
           await  getNikName();
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(AddNikNameState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
