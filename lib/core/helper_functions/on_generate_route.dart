// core/helper_functions/on_generate_route.dart

import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/screen/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:to_do_app/features/auth/presentation/screen/splash/presentation/views/splash_view.dart';
import 'package:to_do_app/features/task/presentation/views/home/home_view.dart';


Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
   case SplashView.routeName:
   return MaterialPageRoute(builder: (context)=>SplashView());
     case OnBoardingView.routeName:
   return MaterialPageRoute(builder: (context)=>OnBoardingView());

    case HomeView.routeName:
   return MaterialPageRoute(builder: (context)=>HomeView());

   default: 
   return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}