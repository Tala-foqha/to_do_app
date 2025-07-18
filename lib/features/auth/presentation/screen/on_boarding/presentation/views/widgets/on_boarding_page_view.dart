// features/auth/presentation/screen/on_boarding/presentation/views/widgets/on_boarding_page_view.dart

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/helper_functions/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/helper_functions/utils/app_strings.dart';
import 'package:to_do_app/core/helper_functions/utils/app_styles.dart';
import 'package:to_do_app/features/auth/data/model/on_boarding_model.dart';
import 'package:to_do_app/features/auth/presentation/screen/on_boarding/presentation/views/widgets/on_boarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: 3,
      itemBuilder:(context,index)=>
       OnBoardingPageViewItem(controller: controller, onboardingModel: onBoardingModel.onBoardingViews[index], 
       index: index,),
    );
  }
}

