import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'module_util.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);