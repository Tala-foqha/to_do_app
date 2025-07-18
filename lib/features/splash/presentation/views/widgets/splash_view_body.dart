// features/splash/presentation/views/widgets/splash_view_body.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/helper_functions/utils/app_strings.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/app_logo.png'),
          SizedBox(height: 20,),
          Text(AppStrings.appName)
        ],
      ),
    );
  }
}