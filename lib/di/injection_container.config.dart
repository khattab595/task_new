// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:the_business_square/views/home/data/repositoreis/home_repo.dart'
    as _i3;
import 'package:the_business_square/views/home/presentation/cubit/home_cubit.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.HomeRepoImp>(() => _i3.HomeRepoImp());
    gh.factory<_i4.HomeCubit>(
        () => _i4.HomeCubit(homeRepoImp: gh<_i3.HomeRepoImp>()));
    return this;
  }
}
