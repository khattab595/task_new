import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:get/get.dart';
 import 'package:the_business_square/shared/cache/storage.dart';

import 'package:the_business_square/views/home/presentation/cubit/home_cubit.dart';
import 'package:the_business_square/views/home/presentation/pages/home_view.dart';


 import 'di.dart';
import 'di/injection_container.dart';

import 'logic/core/api_client/api_client_bloc.dart';
import 'logic/core/api_client/api_client_state.dart';


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
         BlocProvider(create: (context) => Di.apiClientBloc),
                BlocProvider(create: (context) => getIt<HomeCubit>()..fetchHome()),

      ],
      child: BlocListener<ApiClientBloc, ApiClientState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (failure) {
              KHelper.showSnackBar(KFailure.toError(failure));
              failure.whenOrNull(
                error401: (e) {
                  KStorage.i.delToken;
                  KStorage.i.delUser;
                  Get.offAll(() => HomeView());
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
          locale: Locale("en"),

          theme: KThemeData.light,
          //darkTheme: KThemeData.dark,

          home: Builder(
            builder: (context) {
              return AnnotatedRegion<SystemUiOverlayStyle>(
                value: KThemeData.overlayStyle,
                child: HomeView(),
                //  child:   AdminHome(),
              );
            },
          ),
        ),
      )
    );
  }
}





