
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../../data/models/category/Add_category_pram.dart';
import 'delete_category_state.dart';

@Injectable()
class DeleteCategoryBloc extends Cubit<DeleteCategoryState> {
  DeleteCategoryBloc({required this.addNewCategoryRepoImp})
      : super(const DeleteCategoryState.initial());

  static DeleteCategoryBloc of(BuildContext context) =>
      BlocProvider.of<DeleteCategoryBloc>(context);

  final AdminFeatureRepoImp addNewCategoryRepoImp;
  AddCategoryPram addCategoryPrams = AddCategoryPram();
  deleteCategory(int id) async {
    try {
      emit(const DeleteCategoryState.loading());
      final result = await addNewCategoryRepoImp.deleteCategory(id: id);
      result.fold(
        (l) {
          debugPrint(
              '================= AddNewCategory Bloc : ${KFailure.toError(l)}');
          emit(DeleteCategoryState.error(error: l));
        },
        (r) {
          debugPrint(
              '================= AddNewCategory Bloc : ${r.toString()}  ');
          emit(DeleteCategoryState.success());
        },
      );
    } catch (e) {
      debugPrint(
          '================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(DeleteCategoryState.error(
          error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
