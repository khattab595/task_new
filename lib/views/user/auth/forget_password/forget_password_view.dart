import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_business_square/views/user/auth/forget_password/reset_password_view.dart';

import '../../../../logic/forget_password/forget_password_bloc.dart';
import '../../../../logic/forget_password/forget_password_state.dart';
import '../../../../shared/localization/trans.dart';
import '../../../../shared/theme/assets.dart';
import '../../../../shared/theme/helper.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_navigate.dart';
import '../../../widgets/custom_toast_app.dart';
import '../../../widgets/loading/loading.dart';
import '../../../widgets/text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);
  static TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: KAppBar(title: Tr.get.forget_password),
      body: BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (data) {
              navigateTo(context, ResetPasswordScreen(email: emailController.text));
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: topPadding + 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: BackWithTitle(title: Tr.get.forget_password.replaceAll("?", '')),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              KAssets.login_shape,
                              width: width,
                            ),
                            Positioned(
                              left: 60,
                              child: Image.asset(
                                KAssets.logo,
                                width: width * .55,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              KTextFormField(
                                hintText: Tr.get.email,
                                controller: emailController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return Tr.get.valid_text;
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              state.maybeWhen(
                                loading: () => const CircularLoaderWidget(),
                                orElse: () => KButton(
                                  title: Tr.get.send_otp,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      ForgetPasswordBloc.of(context).forgetPassword(
                                        email: emailController.text,
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
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

class BackWithTitle extends StatelessWidget {
  const BackWithTitle({
    super.key,
    required this.title,
    this.leading,
  });
  final String title;

  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
            decoration: BoxDecoration(color: Color(0xffF4F4F5), borderRadius: BorderRadius.circular(6)),
            child: Transform.flip(
              flipX: Tr.isAr,
              child: SvgPicture.asset(KAssets.back_btn, width: 12),
            ),
          ),
        ),
        if (leading != null) leading!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
