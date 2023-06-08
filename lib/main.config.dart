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
import 'package:test_injectable/main.dart' as _i3;

const String _dev = 'dev';
const String _staging = 'staging';

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
    gh.singleton<_i3.AppConf>(_i3.AppConf());
    gh.singleton<_i3.Dep0>(_i3.Dep0(gh<_i3.AppConf>()));
    gh.singleton<_i3.Dep11>(_i3.Dep11());
    gh.singleton<_i3.Dep12>(_i3.Dep12());
    gh.singleton<_i3.Dep13>(_i3.Dep13());
    gh.singleton<_i3.Dep14>(_i3.Dep14());
    gh.singleton<_i3.Dep15>(_i3.Dep15());
    gh.singleton<_i3.Dep16>(_i3.Dep16());
    gh.singleton<_i3.Dep17>(_i3.Dep17());
    gh.singleton<_i3.Dep18>(_i3.Dep18());
    gh.singleton<_i3.Dep19>(_i3.Dep19(gh<_i3.Dep15>()));
    gh.singleton<_i3.Dep2>(_i3.Dep2());
    gh.singleton<_i3.Dep21>(_i3.Dep21());
    gh.singleton<_i3.Dep22>(_i3.Dep22());
    gh.singleton<_i3.Dep23>(_i3.Dep23());
    gh.singleton<_i3.Dep24>(_i3.Dep24());
    gh.singleton<_i3.Dep25>(_i3.Dep25());
    gh.singleton<_i3.Dep26>(_i3.Dep26());
    gh.singleton<_i3.Dep27>(_i3.Dep27());
    gh.singleton<_i3.Dep28>(_i3.Dep28());
    gh.singleton<_i3.Dep29>(_i3.Dep29());
    gh.singleton<_i3.Dep3>(_i3.Dep3());
    gh.singleton<_i3.Dep31>(_i3.Dep31());
    gh.singleton<_i3.Dep32>(_i3.Dep32());
    gh.singleton<_i3.Dep33>(_i3.Dep33());
    gh.singleton<_i3.Dep4>(_i3.Dep4());
    gh.singleton<_i3.Dep5>(_i3.Dep5());
    gh.singleton<_i3.Dep6>(_i3.Dep6());
    gh.singleton<_i3.Dep7>(_i3.Dep7());
    gh.singleton<_i3.Dep8>(_i3.Dep8());
    gh.singleton<_i3.Dep9>(_i3.Dep9());
    gh.singleton<_i3.Dep1>(_i3.Dep1(gh<_i3.Dep22>()));
    gh.lazySingleton<_i3.Dep10Interface>(
      () => _i3.DevDep10(gh<_i3.Dep19>()),
      registerFor: {_dev},
    );
    gh.singleton<_i3.Dep20>(_i3.Dep20(gh<_i3.Dep24>()));
    gh.singleton<_i3.Dep30>(_i3.Dep30(gh<_i3.Dep10Interface>()));
    gh.lazySingleton<_i3.Dep10Interface>(
      () => _i3.StagingDev10(gh<_i3.Dep20>()),
      registerFor: {_staging},
    );
    return this;
  }
}
