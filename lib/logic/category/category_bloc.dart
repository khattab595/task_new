import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../data/repository/category/category_repo.dart';
import '../../shared/localization/trans.dart';
import 'category_state.dart';

@injectable
class CategoryBloc extends Cubit<CategoryState> {
  CategoryBloc({required this.categoryRepoImp}) : super(const CategoryState.initial());

  static CategoryBloc of(BuildContext context) => BlocProvider.of<CategoryBloc>(context);

  final CategoryRepoImp categoryRepoImp;
  fetchCategory() async {
    try {
      emit(const CategoryState.loading());
      final result = await categoryRepoImp.fetchCategory();
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc : ${KFailure.toError(l)}');
          emit(CategoryState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ProfileBloc : ${r.toString()}  ');
          emit(CategoryState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(CategoryState.error(error: Tr.get.try_again));
      rethrow;
    }
  }
}
