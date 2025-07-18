// features/auth/presentation/screen/on_boarding/presentation/views/widgets/on_boarding_view_body.dart

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/helper_functions/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/helper_functions/utils/app_strings.dart';
import 'package:to_do_app/core/helper_functions/utils/app_styles.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 14),
        GestureDetector(
          onTap: () {},
          child: Text(
            AppStrings.skip,
            style: AppStyles.latoRegular16.copyWith(
              color: AppColors.white.withOpacity(0.44),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Column(
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
        ),
        const Spacer(), // يجعل ما بعده ينزل لأسفل الشاشة
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.back,
                style: AppStyles.latoRegular16.copyWith(
                  color: AppColors.white.withOpacity(0.44),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(4)
                )
              ),
              onPressed: () {},
              child: Text(AppStrings.next,
              style: AppStyles.latoRegular16.copyWith(
                color: AppColors.white
              ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16), // مسافة بسيطة من الأسفل
      ],
    );
  }
}