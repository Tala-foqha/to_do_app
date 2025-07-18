// features/auth/presentation/screen/on_boarding/presentation/views/widgets/on_boarding_page_view_item.dart

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/database/cache/cache_helper.dart';
import 'package:to_do_app/core/services/services_locator.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/core/widgets/custom_text_button.dart';
import 'package:to_do_app/features/auth/data/model/on_boarding_model.dart';
import 'package:to_do_app/features/task/presentation/views/home/home_view.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.controller, required this.onboardingModel, required this.index,
  });
final onBoardingModel onboardingModel;
  final PageController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
     //crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       const SizedBox(height: 14),
    index!=2?   GestureDetector(
         onTap: () {
          controller.jumpToPage(2);
         },
         child: Align(
           alignment: Alignment.centerLeft,
           child: Text(
             AppStrings.skip,
             style: Theme.of(context).textTheme.displaySmall!.copyWith(
               color: AppColors.white.withOpacity(0.44),
               fontSize: 16
             ),
           ),
         ),
       ):SizedBox(),
       const SizedBox(height: 15),
       Center(child: Image.asset(onboardingModel.images)),
        SizedBox(height: 16,),
          SmoothPageIndicator(
     controller: controller,
      count: 3,
      
      effect: SlideEffect(
       activeDotColor: AppColors.primary,
      // dotColor: AppColors.primary,
      dotHeight: 4,
      dotWidth: 26.28,
      spacing: 8
          
      ),
      ),
       const SizedBox(height: 50),
       Text(
         onboardingModel.title,
         style: AppStyles.latoBold40.copyWith(
           fontSize: 32,
           color: AppColors.white,
         ),
       ),
       const SizedBox(height: 42),
       Text(
        onboardingModel.subTitle,
         textAlign: TextAlign.center,
         style: AppStyles.latoRegular16.copyWith(
           color: AppColors.white,
         ),
       ),
       const Spacer(), // يجعل ما بعده ينزل لأسفل الشاشة
       Row(
         children: [
           Visibility(
            visible: index!=0,
             child:CustomTextButton(text: AppStrings.back,
              onPressed: () =>controller.previousPage(
                duration: Duration(milliseconds: 300), curve: Curves.easeIn)
)
           ),
           const Spacer(),
        index !=2?   ElevatedButton(
             style: Theme.of(context).elevatedButtonTheme.style,
             onPressed: () {
              controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
             },
             child: Text(AppStrings.next,
             style: AppStyles.latoRegular16.copyWith(
            
              color: AppColors.white
             ),
             ),
             
           ):  ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: AppColors.primary,
               shape: BeveledRectangleBorder(
                 borderRadius: BorderRadiusGeometry.circular(4)
               )
             ),
             onPressed: ()async {
      await getIt<CacheHelper>() .saveData(
              key: AppStrings.onBoardingKey, value: true).then((value){
                Navigator.pushNamed(context, HomeView.routeNmae);
             });
            
             },
             child: Text(AppStrings.getStarted,
             style: AppStyles.latoRegular16.copyWith(
              color: AppColors.white
             ),
             ),
           )
           ,
         ],
       ),
       const SizedBox(height: 16), // مسافة بسيطة من الأسفل
     ],
          );
  }
}


