// core/services/services_locator.dart
import 'package:get_it/get_it.dart';
import 'package:to_do_app/core/database/cache/cache_helper.dart';
final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<CacheHelper>(()=>CacheHelper());


}