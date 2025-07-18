// core/helper_functions/on_generate_route.dart

import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/screen/splash/presentation/views/splash_view.dart';


Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
   case SplashView.routeName:
   return MaterialPageRoute(builder: (context)=>SplashView());

   default: 
   return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}