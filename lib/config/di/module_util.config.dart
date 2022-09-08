// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/mappers/example/example_list_mapper.dart' as _i8;
import '../../data/mappers/example/example_mapper.dart' as _i5;
import '../../data/remotes/example/example_service.dart' as _i6;
import '../../data/repositories/example_repository.dart' as _i9;
import '../../utils/sharepreferences/account_shared_preferences.dart' as _i3;
import '../LoggingInterceptor.dart' as _i7;
import 'dio_module.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  gh.factory<_i3.AccountSharedPreferences>(
      () => _i3.AccountSharedPreferences());
  gh.factory<_i4.Dio>(() => dioModule.dio);
  gh.singleton<_i5.ExampleMapper>(_i5.ExampleMapper());
  gh.factory<_i6.ExampleService>(() => _i6.ExampleService(get<_i4.Dio>()));
  gh.singleton<_i7.LoggingInterceptor>(_i7.LoggingInterceptor());
  gh.singleton<_i8.ExampleListMapper>(
      _i8.ExampleListMapper(get<_i5.ExampleMapper>()));
  gh.factory<_i9.ExampleRepository>(() => _i9.ExampleRepository(
      get<_i6.ExampleService>(),
      get<_i5.ExampleMapper>(),
      get<_i8.ExampleListMapper>()));
  return get;
}

class _$DioModule extends _i10.DioModule {}
