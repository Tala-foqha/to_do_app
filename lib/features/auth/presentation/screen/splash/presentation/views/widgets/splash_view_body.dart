// features/auth/presentation/screen/splash/presentation/views/widgets/splash_view_body.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/database/cache/cache_helper.dart';
import 'package:to_do_app/core/services/services_locator.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/features/auth/presentation/screen/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:to_do_app/features/task/presentation/views/home/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState(){
    super.initState();
    navigate(context);
  }
void navigate(BuildContext context) {
  bool isVisited = getIt<CacheHelper>().getData(key: AppStrings.onBoardingKey) ?? false;

  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushNamed(
      context,
      isVisited ? HomeView.routeName : OnBoardingView.routeName,
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/app_logo.png'),
          SizedBox(height: 20,),
          Text(AppStrings.appName,
          style: AppStyles.latoBold40.copyWith(
            color: AppColors.white
          ),)
        ],
      ),
    );
  }
}