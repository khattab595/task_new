import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/shared/theme/text_theme.dart';

import '../../../../data/models/auth/verfiy/verifiy_email_params.dart';
import '../../../../logic/email_verify/emailVerify_bloc.dart';
import '../../../../logic/email_verify/emailVerify_state.dart';
import '../../../../shared/cache/storage.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/helper.dart';
import '../../../admin/home_view/home_view.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_navigate.dart';
import '../../../widgets/custom_toast_app.dart';
import '../../../widgets/loading/loading.dart';
import '../../../widgets/main_nav_bar.dart';
import '../../../widgets/text_field.dart';
import '../forget_password/forget_password_view.dart';

// ignore: must_be_immutable
class VerifyEmailView extends StatelessWidget {
  VerifyEmailView({Key? key, required this.email}) : super(key: key);
  String email;
  var otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<EmailVerifyBloc, EmailVerifyState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (data) {
              if (KStorage.i.getUser!.role == 'admin') {
                navigateAndFinish(context, HomeAdminView());
              } else {
                navigateAndFinish(context, const NavBar());
              }
            },
            error: (error) {
              KToast(message: error, state: ToastStates.ERROR);
            },
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: topPadding + 25),
                        BackWithTitle(title: Tr.get.email_verify_otp),
                        SizedBox(height: 100),
                        KTextFormField(
                          hintText: Tr.get.otp,
                          controller: otpController,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 40),
                        state.maybeWhen(
                          loading: () => const CircularLoaderWidget(),
                          orElse: () => KButton(
                            title: Tr.get.save,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                EmailVerifyBloc.of(context)
                                    .verifiyEmail(verifiyEmailParams: VerifiyEmailParams(email: KStorage.i.getUser!.email, otp: otpController.text));
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 40),
                        state.maybeWhen(
                            loadingSend: () => const CircularLoaderWidget(),
                            orElse: () => InkWell(
                                onTap: () {
                                  EmailVerifyBloc.of(context).SendOTpEmail();
                                },
                                child: Text(
                                  Tr.get.send_otp_again,
                                  style: KTextStyle.of(context).appBar,
                                ))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
