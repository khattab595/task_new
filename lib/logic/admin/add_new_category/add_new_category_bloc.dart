import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';

import '../../../data/models/category/Add_category_pram.dart';
import 'add_new_category_state.dart';

@Injectable()
class AddNewCategoryBloc extends Cubit<AddNewCategoryState> {
  AddNewCategoryBloc({required this.addNewCategoryRepoImp}) : super(const AddNewCategoryState.initial());

  static AddNewCategoryBloc of(BuildContext context) => BlocProvider.of<AddNewCategoryBloc>(context);

  final AdminFeatureRepoImp addNewCategoryRepoImp;
  AddCategoryPram addCategoryPrams = AddCategoryPram();
  addCategory() async {
    try {
      emit(const AddNewCategoryState.loading());
      final result = await addNewCategoryRepoImp.add_new_cat(addCategoryPrams);
      result.fold(
        (l) {
          debugPrint('================= AddNewCategory Bloc : ${KFailure.toError(l)}');
          emit(AddNewCategoryState.error(error: l));
        },
        (r) {
          debugPrint('================= AddNewCategory Bloc : ${r.toString()}  ');
          emit(AddNewCategoryState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(AddNewCategoryState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  setNameAr(String? val) {
    addCategoryPrams = addCategoryPrams.copyWith(nameAr: val);
  }

  setNameEn(String? val) {
    addCategoryPrams = addCategoryPrams.copyWith(nameEn: val);
  }

  setImage(value) async {
    if (value != null) addCategoryPrams = addCategoryPrams.copyWith(image: value);
  }
}
