import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/shared/error/failures.dart';

import '../../../data/models/coin/Coin_response.dart';
 part 'coin_state.freezed.dart';

@freezed
abstract class CoinState with _$CoinState {
  const factory CoinState.initial() = CoinStateInitial;
  const factory CoinState.loading() = CoinStateLoading;
  const factory CoinState.success() = AddCoinStateSuccess;
  const factory CoinState.successDelete() = DeleteCoinStateSuccess;
  const factory CoinState.successGet(CoinResponse coinResponse) = CoinStateSuccess;
  const factory CoinState.error({required KFailure error}) = CoinStateError;
}
