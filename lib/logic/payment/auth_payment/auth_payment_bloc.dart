import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:my_fatoorah/my_fatoorah.dart';
import 'package:the_business_square/app.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'package:the_business_square/shared/theme/helper.dart';

import '../../../data/repository/payment/payment_repo.dart';
import '../../../shared/localization/trans.dart';
import 'auth_payment_state.dart';

@injectable
class PaymentBloc extends Cubit<PaymentState> {
  PaymentBloc({required this.paymentRepoImp}) : super(const PaymentState.initial());

  static PaymentBloc of(BuildContext context) => BlocProvider.of<PaymentBloc>(context);

  final PaymentRepoImp paymentRepoImp;

  Future createPayment({required int? package_id, required int? price}) async {
    try {
      emit(const PaymentState.loading());

      final result = await paymentRepoImp.createPayment(package_id: package_id);
      print("jvjsjkjkbnn${result}");
      result.fold(
        (l) {
          emit(PaymentState.error(error: KFailure.toError(l)));
          debugPrint('================= PaymentBloc  paymentAuth: ${KFailure.toError(l)}');
        },
        (payment_id) async {
          //emit(PaymentState.success(r));
print("abasssss");
          final value = await MyFatoorah.startPayment(
            context: Get.context!,
            request: MyfatoorahRequest.live(
              currencyIso: Country.Kuwait,
              successUrl: 'https://c4od57.serveravatartmp.com/img/success.jpeg',
              errorUrl: 'https://c4od57.serveravatartmp.com/img/fail.jpeg',
              invoiceAmount: double.parse(price.toString()),
              language: ApiLanguage.English,
              token: myF,

            ),
          );
          if (value.isSuccess) {
            KHelper.showSnackBar('PAYMENT APPROVED');
            await _updatePayment(payment_id: payment_id, status: 'success');
            Get.off(() => Wrapper());
          } else {
            KHelper.showSnackBar('PAYMENT Failed');
            await _updatePayment(payment_id: payment_id, status: 'failed');
            Get.off(() => Wrapper());
          }
        },
      );
    } catch (e) {
      debugPrint('================= PaymentBloc (Catch): ${e.toString()} ');
      emit(PaymentState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  Future _updatePayment({required String? payment_id, required String status}) async {
    try {
      emit(const PaymentState.loading());
      final result = await paymentRepoImp.updatePayment(payment_id: payment_id, status: status);
      result.fold(
        (l) {
          emit(PaymentState.error(error: KFailure.toError(l)));
          debugPrint('================= PaymentBloc  paymentAuth: ${KFailure.toError(l)}');
        },
        (r) {
          emit(PaymentState.updateSuccess());
        },
      );
    } catch (e) {
      debugPrint('================= PaymentBloc (Catch): ${e.toString()} ');
      emit(PaymentState.error(error: Tr.get.try_again));
      rethrow;
    }
  }
}

final myF =
    "4cN0uIpd6t9hho8psvJr0qk4n-iTWvNxqfmwv6hNI-cnNeaEH6CywgP5qBCNfOs7pqyn-U5c9MLNiyC4-b8Ga8pLdKuRRtnc_07I92icpKr1sSNNOPX_4pDX7UQ5oIgswoYThepaXDPz2oCEDK7shdcog_3AbA3vZJn7GfveGBgnhjWKnYt__EIPUl1kOTieRLwBxO-wXy9qoh8pk9BHtq7wBf-0bh7ZEjE0Yp9BJ4keWyODrbFFBL7HHD8j8EwLnYmwHYo2OsDnaJBBv9xgeL2hEFPTuB3S_CnlQrxOSQ2MG_vujmsCoEBXAyel9QtkObRx1Lj_JjUhvisdnEaozNdwZXU9GTvA1IH_hgnLwZCM7fd5-Q4aOgFLKAfJwru7AnL6kBaJjqTDxpPeyv8Bpe_7DJoquDDx7BfO03oOa_8LMK98Yo30LYBcFXkuosMDUIepJZ1WZD5sJSEKDev4iCU8DP4iJTdImmp0G57GW-Gcz_z_YbC7d040aQCmZC_3a4PLJ6HrC8fxIQLCkz3TfVB_Rgq__r3Lcgeec0p_a2JfbLAgodR7paiKeeFeaQPZfR1iOAaNtGW2mo3YCkH4HFNE9mJkrdMcP0R59vlB4UWQKK0vLGdkrP63rv-4Vo1_9XCuVHMHIBob2z1-dz_iA1PvseK6c26Rzh4fMUOsuSZ_MLct";
