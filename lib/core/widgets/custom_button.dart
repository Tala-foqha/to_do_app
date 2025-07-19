// core/widgets/custom_button.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed,this.backgroundColor=AppColors.primary});
  final String text;
  final VoidCallback onPressed;
 final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
        
        backgroundColor:MaterialStateProperty.all(backgroundColor) 
      ),
      child: Text(
        text,
        style: AppStyles.latoRegular16.copyWith(
          color: Colors.white
        ),
      ),
    );
  }
}
