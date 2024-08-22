import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_business_square/app.dart';
import 'package:the_business_square/logic/auth/auth_bloc.dart';
import 'package:the_business_square/logic/auth/auth_state.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/views/widgets/text_field.dart';

import '../../../../shared/theme/assets.dart';
import '../../../../shared/theme/helper.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_navigate.dart';
import '../../../widgets/loading/loading.dart';
import '../forget_password/forget_password_view.dart';
import '../register/register_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final topPadding = MediaQuery.paddingOf(context).top;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: KAppBar(title: Tr.get.welcome_back),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (loginModel) {
              navigateAndFinish(context, const Wrapper());
            },
            error: (error) {},
          );
        },
        builder: (context, state) {
          final bloc = AuthBloc.of(context);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: topPadding + 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(Tr.get.welcome_back, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(Tr.get.letsSeeWhatYouHaveMissed, style: TextStyle(fontSize: 14)),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 24),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              KTextFormField(
                                hintText: Tr.get.email,
                                onChanged: bloc.setEmail,
                                filled: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return Tr.get.valid_text;
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10),
                              KTextFormField(
                                hintText: Tr.get.password,
                                onChanged: bloc.setPass,
                                filled: true,
                                obscureText: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return Tr.get.valid_text;
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              InkWell(
                                onTap: () {
                                  navigateTo(context, ForgetPasswordScreen());
                                },
                                child: Text(
                                  Tr.get.forget_password,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: KColors.accentColorL),
                                ),
                              ),
                              const SizedBox(height: 20),
                              state.maybeWhen(
                                loading: () => const CircularLoaderWidget(),
                                orElse: () => KButton(
                                  title: Tr.get.login,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      AuthBloc.of(context).login();
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(height: 20),
                              Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => const RegisterLanding());
                                  },
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${Tr.get.dont_have_acc} ',
                                          style: TextStyle(fontSize: 16, color: Colors.black),
                                        ),
                                        TextSpan(
                                          text: Tr.get.create_account,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: KColors.accentColorL),
                                        ),
                                      ],
                                    ),
                                  ),
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
