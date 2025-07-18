// features/auth/data/model/on_boarding_model.dart

import 'package:to_do_app/core/utils/app_strings.dart';

class onBoardingModel{
  final String images;
  final String title;
  final String subTitle;

  onBoardingModel({required this.images, required this.title, required this.subTitle});

  static List<onBoardingModel>onBoardingViews=[
    onBoardingModel(
      images: 'assets/images/onboarding1.png',
     title: 'Manage your tasks',
      subTitle:AppStrings.onBoardingSubTitleOne),
       onBoardingModel(
      images: 'assets/images/onboarding2.png',
     title: AppStrings.onBoardingTitleTwo,
      subTitle:AppStrings.onBoardingSubTitleTwo),

       onBoardingModel(
      images: 'assets/images/onboarding3.png',
     title: AppStrings.onBoardingTitleThree,
      subTitle:AppStrings.onBoardingSubTitleThree),
      


   
    ];
}
