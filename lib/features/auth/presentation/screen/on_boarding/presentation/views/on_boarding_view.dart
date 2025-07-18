// features/auth/presentation/screen/on_boarding/presentation/views/on_boarding_view.dart
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/helper_functions/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/helper_functions/utils/app_strings.dart';
import 'package:to_do_app/core/helper_functions/utils/app_styles.dart';
import 'package:to_do_app/features/auth/presentation/screen/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingView extends StatelessWidget {
   OnBoardingView({super.key});
static const routeName='onBoarding';
 PageController controller = PageController();
  @override
  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Expanded(
          child: OnBoardingPageView(controller: controller),
        ),
      ),
    ),
  );
}
}
