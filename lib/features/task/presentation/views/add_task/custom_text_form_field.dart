// features/task/presentation/views/add_task/custom_text_form_field.dart

import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controoller, required this.title,
  });

  final TextEditingController controoller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controoller,
      decoration: InputDecoration(
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