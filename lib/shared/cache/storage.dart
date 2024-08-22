import 'package:get_storage/get_storage.dart';
import 'package:the_business_square/data/models/auth/Data.dart';

class KStorageKeys {
  static const String themeMode = 'themeMode';
  static const String locale = 'locale';
  static const String lang = 'language';
  static const String token = 'token';
  static const String user = 'user';
  static const String fcmToken = 'fcmToken';
  static const String onBoarding = 'onBoarding';
}

class KStorage {
  static final GetStorage _storage = GetStorage();

  static KStorage? _i;

  KStorage._internal() {
    _i = this;
  }
  static KStorage get i {
    return _i ?? KStorage._internal();
  }

  setLang(String lang) => _storage.write(KStorageKeys.lang, lang);
  String? get getLang => _storage.read(KStorageKeys.lang);

  get delToken => _storage.remove(KStorageKeys.token);
  setToken(String? token) => _storage.write(KStorageKeys.token, token.toString().split('|').last);
  String? get getToken => _storage.read(KStorageKeys.token);

  setUser(UserData? user) => _storage.write(KStorageKeys.user, user?.toJson());
  UserData? get getUser => UserData.fromJson(_storage.read(KStorageKeys.user));
  get delUser => _storage.remove(KStorageKeys.user);

  setFcmToken(String? token) => _storage.write(KStorageKeys.fcmToken, token);
  String? get getFcmToken => _storage.read(KStorageKeys.fcmToken);

  setOnBoarding() => _storage.write(KStorageKeys.onBoarding, true);
  bool get onBoarding => _storage.read(KStorageKeys.onBoarding) == true;

  get erase async => await _storage.erase();

  get logOut {
    delToken;
    delUser;
  }
}


