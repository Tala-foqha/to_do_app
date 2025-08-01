// core/utils/constant.dart
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';

void showToast({required String message ,required ToastStates state}){
   Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor:getToastState(state),
        textColor: Colors.white,
        fontSize: 16.0
       );
}

enum ToastStates{error,success,warining}
Color getToastState(ToastStates state){

switch (state){
  case ToastStates.error:
  return AppColors.red;

   case ToastStates.success:
  return AppColors.primary;

   case ToastStates.warining:
  return AppColors.orange;
  
  
}

}