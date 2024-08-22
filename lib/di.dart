import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'di/injection_container.dart';
import 'logic/core/api_client/api_client_bloc.dart';
import 'logic/core/settings/settings_cubit.dart';
import 'shared/api_client/api_client_impl.dart';
import 'shared/notifications_ctrl.dart/notifications_ctrl.dart';
import 'shared/observer.dart';

abstract class Di {
  static final GetIt _i = GetIt.instance;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await GetStorage.init();
    await NotificationCtrl.fcm_init('TheBusinessSquare');
    debugPrint('================= FCM Token >>>  ${KStorage.i.getFcmToken}');
    await configure();
    Bloc.observer = MyBlocObserver();
    //await GetStorage().erase();
    debugPrint('================= ${KStorage.i.getToken} : ');

    _i.registerLazySingleton(() => DioClientImpl(apiClientBloc: _i()));
    _i.registerLazySingleton(() => ApiClientBloc());
    _i.registerLazySingleton(() => SettingsBloc());
    _i.registerLazySingleton(() => EmojiParser());
    _i.registerLazySingleton(() => ImagePicker());
  }

  static DioClientImpl get dioClient => _i.get<DioClientImpl>();
  static ApiClientBloc get apiClientBloc => _i.get<ApiClientBloc>();
  static SettingsBloc get settingsBloc => _i.get<SettingsBloc>();
  static EmojiParser get emojiParser => _i.get<EmojiParser>();
  static ImagePicker get imagePicker => _i.get<ImagePicker>();
}
