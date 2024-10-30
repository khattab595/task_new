part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class Loading extends HomeState {}



class FetchHomeSuccess extends HomeState {
  final List<HomeModel> homeData;

  FetchHomeSuccess({required this.homeData});
}


class Error extends HomeState {
  final String error;
  Error({required this.error});
}
