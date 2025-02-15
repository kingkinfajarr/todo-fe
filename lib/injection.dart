import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_fe/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
