import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_business_square/data/models/auth/forgetPassword/ResetPasswordPrams.dart';
import 'package:the_business_square/views/user/auth/forget_password/forget_password_view.dart';
import 'package:the_business_square/views/user/auth/login/login_view.dart';

import '../../../../logic/reset_password/reset_password_bloc.dart';
import '../../../../logic/reset_password/reset_password_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/helper.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_navigate.dart';
import '../../../widgets/custom_toast_app.dart';
import '../../../widgets/loading/loading.dart';
import '../../../widgets/text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  final String email;
  ResetPasswordScreen({Key? key, required this.email}) : super(key: key);
  final otpController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (data) {
              navigateAndFinish(context, LoginView());
              KToast(message: data.message ?? "", state: ToastStates.SUCCESS);
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: topPadding + 25),
                        BackWithTitle(title: Tr.get.reset_password),
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
                        SizedBox(
                          height: 20,
                        ),
                        KTextFormField(
                          hintText: Tr.get.password,
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        KTextFormField(
                          hintText: Tr.get.confirm_password,
                          controller: confirmPasswordController,
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
                                ResetPasswordBloc.of(context).resetPassword(
                                  resetPasswordPrams: ResetPasswordPrams(
                                    otp: otpController.text,
                                    email: email,
                                    password: passwordController.text,
                                    passwordConfirmation: passwordController.text,
                                  ),
                                );
                              }
                            },
                          ),
                        ),
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
