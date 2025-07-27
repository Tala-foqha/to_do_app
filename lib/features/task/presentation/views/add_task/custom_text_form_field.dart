// features/task/presentation/views/add_task/custom_text_form_field.dart

import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
     this.controoller, required this.title, this.suffixIcon, this.readOnly=false,
  });

  final TextEditingController? controoller;
  final String title;
 final  Widget? suffixIcon;
 final bool readOnly ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controoller,
      readOnly: readOnly,
      
      decoration: InputDecoration(
        
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(  borderRadius: BorderRadius.circular(4)),
        focusedBorder: OutlineInputBorder(  borderRadius: BorderRadius.circular(4)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4)
        ),
        hintText:title,
        hintStyle: AppStyles.latoRegular16.copyWith(
          color: AppColors.white
        ),
        filled: true,
        fillColor: AppColors.lightBlack,
    
      ),
    );
  }
}