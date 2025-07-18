// main.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/database/cache/cache_helper.dart';
import 'package:to_do_app/core/helper_functions/on_generate_route.dart';
import 'package:to_do_app/core/helper_functions/theme.dart';
import 'package:to_do_app/core/services/services_locator.dart';
import 'package:to_do_app/features/auth/presentation/screen/splash/presentation/views/splash_view.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
 await getIt<CacheHelper>().init();

  // SharedPreferences pref=await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      theme:getAppTheme(),
      darkTheme: getAppDarkTheme(),
      themeMode: ThemeMode.dark,
      initialRoute: SplashView.routeName,
    );
  }
}