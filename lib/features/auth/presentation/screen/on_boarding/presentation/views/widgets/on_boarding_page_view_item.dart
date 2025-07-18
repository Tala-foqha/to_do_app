// features/auth/presentation/screen/on_boarding/presentation/views/widgets/on_boarding_page_view_item.dart


import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/helper_functions/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/helper_functions/utils/app_strings.dart';
import 'package:to_do_app/core/helper_functions/utils/app_styles.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/onboarding1.png')),
        SizedBox(height: 16,),
        SmoothPageIndicator(
          controller: PageController(),
           count: 3,
           
           effect: ExpandingDotsEffect(
            activeDotColor: AppColors.primary,
           // dotColor: AppColors.primary,
           dotHeight: 10,
           spacing: 8
        
           ),
           ),
        
        const SizedBox(height: 50),
        Text(
          AppStrings.onBoardingTitleOne,
          style: AppStyles.latoBold40.copyWith(
            fontSize: 32,
            color: AppColors.white,
          ),
        ),
        const SizedBox(height: 42),
        
        Text(
          AppStrings.onBoardingSubTitleOne,
          textAlign: TextAlign.center,
          style: AppStyles.latoRegular16.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}