import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:the_business_square/data/models/slug_model.dart';
import 'package:the_business_square/shared/localization/trans.dart';
import 'package:the_business_square/shared/theme/assets.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/shared/theme/helper.dart';
import 'package:the_business_square/shared/theme/text_theme.dart';
import 'package:the_business_square/views/user/auth/login/login_view.dart';
import 'package:the_business_square/views/widgets/text_field.dart';

import '../../../../logic/auth/auth_bloc.dart';
import '../../../../logic/auth/auth_state.dart';
import '../../../widgets/country_drop.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_navigate.dart';
import '../../../widgets/custom_toast_app.dart';
import '../../../widgets/loading/loading.dart';
import '../verifiy_email/verify_email_view.dart';

class RegisterLanding extends StatelessWidget {
  const RegisterLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          RegisterView(),
          const AddProfilePicView(),
        ],
      ),
    );
  }
}

class RegisterView extends StatefulWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();

  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final bloc = AuthBloc.of(context);
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            KAssets.signup_shape,
            width: width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: topPadding + 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                child: Image.asset(
                  KAssets.logo,
                  height: 23,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                child: Text(
                  Tr.get.create_account,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        KTextFormField(
                          hintText: Tr.get.full_name,
                          onChanged: bloc.setName,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 5),
                        KTextFormField(
                          hintText: Tr.get.phone,
                          keyboardType: TextInputType.number,
                          onChanged: bloc.setPhone,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return Tr.get.valid_text;
                          //   }
                          //   return null;
                          // },
                        ),
                        const SizedBox(height: 5),
                        KTextFormField(
                          hintText: Tr.get.email,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: bloc.setEmailRegister,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 5),
                        KTextFormField(
                          hintText: Tr.get.password,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          onChanged: bloc.setPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 5),
                        KTextFormField(
                          hintText: Tr.get.confirm_password,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          onChanged: bloc.setConfirmPass,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return Tr.get.valid_text;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 5),
                        KTextFormField(
                          hintText: Tr.get.job,
                          onChanged: bloc.setJobTitle,
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return Tr.get.valid_text;
                          //   }
                          //   return null;
                          // },
                        ),
                        const SizedBox(height: 12),
                        Text(
                          Tr.get.country,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        CountryDropDown(
                          onChanged: (values) {
                            bloc.setCountry(values?.en);
                          },
                        ),
                        const SizedBox(height: 12),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return Row(
                              children: [
                                Text(
                                  Tr.get.gender,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Radio<KSlugModel>(
                                      activeColor: KColors.accentColorD,
                                      groupValue: bloc.selectedGender,
                                      value: KSlugModel.genders.first,
                                      onChanged: (values) {
                                        bloc.setGender(values!);
                                      },
                                    ),
                                    Text(
                                      Tr.get.male,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<KSlugModel>(
                                      activeColor: KColors.accentColorD,
                                      groupValue: bloc.selectedGender,
                                      value: KSlugModel.genders.last,
                                      onChanged: (values) {
                                        bloc.setGender(values!);
                                      },
                                    ),
                                    Text(
                                      Tr.get.female,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            );
                          },
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: KColors.accentColorD,
                              value: checkBox,
                              onChanged: (value) {
                                checkBox = value!;
                                setState(() {});
                              },
                            ),
                            InkWell(
                                onTap: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (BuildContext context) {
                                      return Directionality(
                                        textDirection: TextDirection.ltr,
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                        icon: Icon(Icons.arrow_back_ios))
                                                  ],
                                                ),
                                                Text("The Business Square: Terms and Conditions",
                                                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "Welcome to The Business Square, an application designed to facilitate business interactions and advertising across various categories. Our app offers features like account creation, ad posting, and user interaction.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Acceptance of Terms ",
                                                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "By accessing and using The Business Square, you agree to be bound by these Terms and Conditions. Please read them carefully.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("User Accounts", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "Account Creation: To use our services, users must create an account providing valid information.Verification: A verification code will be sent to your email to ensure account authenticity.Account Responsibility: You are responsible for maintaining the security of your account and for all activities under your account.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Privacy Policy", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text("We are committed to protecting your privacy and data with appropriate measures.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("User Conduct", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "Acceptable Use Policy: Users are expected to use The Business Square responsibly and respectfully.Prohibited Activities: Activities such as spamming, harassment, or any illegal actions are strictly prohibited..",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Content and Ads Posting",
                                                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    " Ads Posting Guidelines: Ads must comply with our guidelines and be placed in appropriate categories.Intellectual Property: Respect for intellectual property rights is mandatory.Content Moderation: We reserve the right to moderate or remove content that violates our policies.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Communication", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "User Interaction: Users should interact with each other in a respectful and lawful manner. Reporting Misuse: Any misuse of the app can be reported for our review.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Account Modification and Deletion",
                                                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "Updating Information: Users can update their personal information through their account settings.Account Deletion: Users can delete their accounts, which will remove their data from our systems.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Liability and Disclaimers",
                                                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "Limitation of Liability: The Business Square is not liable for any indirect, incidental damages arising from the use of the service. No Warranties: The service is provided as is without any warranties or guarantees.",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text("Changes to Terms", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(
                                                    "Revision of Terms: These terms may be updated periodically, and we reserve the right to make such changes.Notification of Changes: Users will be notified of significant changes to the terms.Contact InformationFor any questions or concerns regarding these Terms and Conditions, please contact us at thebusinesssquare0@gmail.com",
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  Tr.get.by_creating_an_account,
                                  style: const TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff004187),
                                  ),
                                  textAlign: TextAlign.left,
                                )
                                // Text(
                                //   Tr.get.by_creating_an_account,
                                //   style: KTextStyle.of(context).body2.copyWith(decoration: TextDecoration.underline, color: KColors.accentColorD),
                                // ),

                                )
                          ],
                        ),
                        BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            state.whenOrNull(
                              successRegister: (registerModel) {
                                navigateTo(
                                  context,
                                  VerifyEmailView(email: registerModel.data!.email!),
                                );
                              },
                              errorRegister: (error) {},
                            );
                          },
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: state.maybeWhen(
                                loadingRegister: () => const CircularLoaderWidget(),
                                orElse: () => KButton(
                                  title: Tr.get.create_account,
                                  isLoading: state is AuthStateLoading,
                                  onPressed: () {
                                    if (checkBox == false) {
                                      KToast(message: Tr.get.by_creating_an_account, state: ToastStates.ERROR);
                                    } else if (_formKey.currentState!.validate()) {
                                      AuthBloc.of(context).register();
                                    }
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => LoginView());
                            },
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${Tr.get.already_have_an_account} ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(text: Tr.get.login, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.accentColorD)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddProfilePicView extends StatelessWidget {
  const AddProfilePicView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(width: width, height: height),
        SvgPicture.asset(KAssets.loginBack),
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height * .1),
                    SvgPicture.asset(KAssets.profilePic, height: width * .55),
                    SizedBox(height: height * .05),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Tr.get.add_profile_picture, style: KTextStyle.of(context).reAppBar),
                        const Icon(Icons.edit_note, color: Colors.white, size: 28)
                      ],
                    ),
                    SizedBox(height: height * .2),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KButton(
                        title: Tr.get.next,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
