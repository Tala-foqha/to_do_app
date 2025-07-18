// core/widgets/custom_text_button.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.onPressed});
final String text;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
               onPressed: 
               onPressed  ,             
               child: Text(
                text,
                 style: AppStyles.latoRegular16.copyWith(
                   color: AppColors.white.withOpacity(0.44),
                 ),
               ),
             );
  }
}