import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/di/injection_container.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
GetIt configure() => getIt.init();
