import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:the_business_square/logic/auth/auth_bloc.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/shared/theme/assets.dart';
import 'package:the_business_square/shared/theme/colors.dart';
import 'package:the_business_square/views/admin/home_view/home_view.dart';
import 'package:the_business_square/views/user/auth/login/login_view.dart';
import 'package:the_business_square/views/widgets/custom_button.dart';
import 'package:the_business_square/views/widgets/custom_navigate.dart';
import 'package:the_business_square/views/widgets/main_nav_bar.dart';

import 'chat/logic/rooms_bloc/chat_rooms_bloc.dart';
import 'di.dart';
import 'di/injection_container.dart';
import 'logic/admin/add_new_category/add_new_category_bloc.dart';
import 'logic/admin/admin_get_posts/admin_get_posts_bloc.dart';
import 'logic/admin/change_post_status/change_post_status_bloc.dart';
import 'logic/admin/coin/coin_bloc.dart';
import 'logic/admin/company/company_bloc.dart';
import 'logic/admin/delete_category/delete_category_bloc.dart';
import 'logic/admin/logout/logout_bloc.dart';
import 'logic/admin/nik_name/add_nik_name_bloc.dart';
import 'logic/category/category_bloc.dart';
import 'logic/core/api_client/api_client_bloc.dart';
import 'logic/core/api_client/api_client_state.dart';
import 'logic/core/settings/settings_cubit.dart';
import 'logic/email_verify/emailVerify_bloc.dart';
import 'logic/forget_password/forget_password_bloc.dart';
import 'logic/get_live_streams/get_live_streams_bloc.dart';
import 'logic/get_notifications/get_notifications_bloc.dart';
import 'logic/get_posts/get_posts_bloc.dart';
import 'logic/payment/auth_payment/auth_payment_bloc.dart';
import 'logic/posts/add_post/add_post_bloc.dart';
import 'logic/posts/delete_posts/delete_post_bloc.dart';
import 'logic/posts/posts_search/posts_search_bloc.dart';
import 'logic/profile/change_status_profile/change_status_profile_bloc.dart';
import 'logic/profile/edit_profile/edit_profile_bloc.dart';
import 'logic/profile/get_profile/profile_bloc.dart';
import 'logic/reset_password/reset_password_bloc.dart';
import 'shared/error/failures.dart';
import 'shared/localization/trans.dart';
import 'shared/theme/helper.dart';
import 'shared/theme/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Di.settingsBloc..loadSettings()),
        BlocProvider(create: (context) => Di.apiClientBloc),
        BlocProvider(create: (context) => getIt<ProfileBloc>()..fetchUser()),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<AddNewCategoryBloc>()),
        BlocProvider(create: (context) => getIt<ChangeStatusProfileBloc>()),
        BlocProvider(create: (context) => getIt<AdminGetPostsBloc>()..getPostsAdmin("waiting")),
        BlocProvider(create: (context) => getIt<PostsSearchBloc>()),
        BlocProvider(create: (context) => getIt<EmailVerifyBloc>()),
        BlocProvider(create: (context) => getIt<LogOutBloc>()),
        BlocProvider(create: (context) => getIt<CompanyBloc>()..getCompany()),
        BlocProvider(create: (context) => getIt<AddPostBloc>()),
        BlocProvider(create: (context) => getIt<AddNikNameBloc>()..getNikName()),
        BlocProvider(create: (context) => getIt<DeleteCategoryBloc>()),
        BlocProvider(create: (context) => getIt<PaymentBloc>()),
        BlocProvider(create: (context) => getIt<GetNotificationsBloc>()..fetchNotifications()),
        BlocProvider(create: (context) => getIt<CoinBloc>()..getCoin()),
        BlocProvider(create: (context) => getIt<DeletePostBloc>()),
        BlocProvider(create: (context) => getIt<ChangePostStatusBloc>()),
        BlocProvider(create: (context) => getIt<GetPostsBloc>()..get_posts()),
        BlocProvider(create: (context) => getIt<CategoryBloc>()..fetchCategory()),
        BlocProvider(create: (context) => getIt<EditProfileBloc>()),
        BlocProvider(create: (context) => getIt<ResetPasswordBloc>()),
        BlocProvider(create: (context) => getIt<ForgetPasswordBloc>()),
        BlocProvider(create: (context) => getIt<GetLiveStreamsBloc>()),
        BlocProvider(create: (context) => getIt<ChatRoomsBloc>()..get_all_rooms()),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return BlocListener<ApiClientBloc, ApiClientState>(
            listener: (context, state) {
              state.whenOrNull(
                error: (failure) {
                  KHelper.showSnackBar(KFailure.toError(failure));
                  failure.whenOrNull(
                    error401: (e) {
                      KStorage.i.delToken;
                      KStorage.i.delUser;
                      Get.offAll(() => Wrapper());
                    },
                    error403: (e) {
                      // debugPrint('================= $e  *** *** *** ***');
                      // Get.offAll(() => VerifyEmailView(email: ''));
                    },
                  );
                },
              );
            },
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: Tr.delegates,
              supportedLocales: Tr.supportedLocales,
              locale: SettingsBloc.of(context).locale,
              localeResolutionCallback: (Locale? locale, Iterable<Locale> iterable) {
                return SettingsBloc.of(context).locale;
              },
              theme: KThemeData.light,
              //darkTheme: KThemeData.dark,
              themeMode: SettingsBloc.of(context).themeMode,
              home: Builder(
                builder: (context) {
                  return AnnotatedRegion<SystemUiOverlayStyle>(
                    value: KThemeData.overlayStyle,
                    child: Wrapper(),
                    //  child:   AdminHome(),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => nav());
  }

  @override
  dispose() {
    ///debugPrint('************ Echo disconnect ************ ');
    super.dispose();
  }

  nav() {
    if (!KStorage.i.onBoarding) {
      navigateAndFinish(context, OnBoarding());
    } else if (KStorage.i.getToken != null) {
      if (KStorage.i.getUser?.role == 'admin') {
        navigateAndFinish(context, HomeAdminView());
      } else {
        navigateAndFinish(context, const NavBar());
      }
    } else {
      navigateAndFinish(context, LoginView());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int screenNum = 1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: width, height: top + 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: LinearProgressIndicator(
                value: screenNum / 3,
                valueColor: AlwaysStoppedAnimation(KColors.accentColorD),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 35),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                if (screenNum == 1)
                  SvgPicture.asset(KAssets.onboarding1)
                else if (screenNum == 2)
                  SvgPicture.asset(KAssets.onboarding2)
                else
                  SvgPicture.asset(KAssets.onboarding3),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: KHelper.hPadding),
                    child: Image.asset(KAssets.logo, height: 54),
                  ),
                ),
              ],
            ),
            Spacer(),
            KButton(
              title: Tr.get.next,
              onPressed: () {
                if (screenNum >= 3) {
                  navigateTo(context, GettingStarted());
                } else
                  setState(() {
                    screenNum = screenNum + 1;
                  });
              },
            ),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final top = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: width, height: top + 20),
            SizedBox(height: 80),
            SvgPicture.asset(KAssets.onboarding4),
            Spacer(),
            KButton(
              title: Tr.get.getStarted,
              onPressed: () {
                KStorage.i.setOnBoarding();
                navigateAndFinish(context, Wrapper());
              },
            ),
            SizedBox(height: 30),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: Tr.get.already_have_an_account,
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: Tr.get.login,
                    style: TextStyle(
                      fontSize: 16,
                      color: KColors.accentColorD,
                      fontWeight: FontWeight.w600,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        KStorage.i.setOnBoarding();
                        navigateAndFinish(context, Wrapper());
                      },
                  ),
                ],
              ),
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
