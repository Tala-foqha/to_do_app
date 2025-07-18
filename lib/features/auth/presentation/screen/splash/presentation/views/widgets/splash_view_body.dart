// features/auth/presentation/screen/splash/presentation/views/widgets/splash_view_body.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/helper_functions/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/helper_functions/utils/app_strings.dart';
import 'package:to_do_app/core/helper_functions/utils/app_styles.dart';
import 'package:to_do_app/features/auth/presentation/screen/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState(){
    super.initState();
    navigate();
  }
void navigate(){
  Future.delayed(Duration(seconds: 3),(){
    Navigator.pushReplacementNamed(context,OnBoardingView.routeName );
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