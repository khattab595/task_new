import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/shared/error/failures.dart';

import '../../../data/models/company/Company_response.dart';
part 'company_state.freezed.dart';

@freezed
abstract class CompanyState with _$CompanyState {
  const factory CompanyState.initial() = AddCompanyStateInitial;
  const factory CompanyState.loading() = AddCompanyStateLoading;
  const factory CompanyState.success() = AddCompanyStateSuccess;
  const factory CompanyState.successDelete() = DeleteCompanyStateSuccess;
  const factory CompanyState.successGet(CompanyResponse companyResponse) = CompanyStateSuccess;
  const factory CompanyState.error({required KFailure error}) = AddCompanyStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs