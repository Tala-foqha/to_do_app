// features/auth/presentation/screen/splash/presentation/views/splash_view.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/screen/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeName='splash-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColors.lightBlack,
      
      body: SplashViewBody(),
    );
  }
}