import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'company_state.dart';

@Injectable()
class CompanyBloc extends Cubit<CompanyState> {
  CompanyBloc({required this.addNewCategoryRepoImp}) : super(const CompanyState.initial());

  static CompanyBloc of(BuildContext context) => BlocProvider.of<CompanyBloc>(context);

  final AdminFeatureRepoImp addNewCategoryRepoImp;

  addCompany({required String coin, required String name}) async {
    try {
      emit(const CompanyState.loading());
      final result = await addNewCategoryRepoImp.addCompany(name: name, coin: coin);
      result.fold(
        (l) {
          debugPrint('================= AddNewCategory Bloc : ${KFailure.toError(l)}');
          emit(CompanyState.error(error: l));
        },
        (r) {
          debugPrint('================= AddNewCategory Bloc : ${r.toString()}  ');
          emit(CompanyState.success());
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(CompanyState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  getCompany() async {
    try {
      emit(const CompanyState.loading());
      final result = await addNewCategoryRepoImp.getCompany();
      result.fold(
        (l) {
          emit(CompanyState.error(error: l));
        },
        (r) {
          emit(CompanyState.successGet(r));
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(CompanyState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }

  deleteCompany({required int id }) async {
    try {
      emit(const CompanyState.loading());
      final result = await addNewCategoryRepoImp.deleteCompany(id: id);
      result.fold(
            (l) {
          emit(CompanyState.error(error: l));
        },
            (r) async {
          emit(CompanyState.successDelete());
           await  getCompany();
        },
      );
    } catch (e) {
      debugPrint('================= AddNewCategory Bloc (Catch): ${e.toString()} ');
      emit(CompanyState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }


}
