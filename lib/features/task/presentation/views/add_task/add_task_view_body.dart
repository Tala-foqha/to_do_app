// features/task/presentation/views/add_task/add_task_view_body.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/features/task/presentation/views/add_task/custom_text_form_field.dart';

class AddTaskViewBody extends StatelessWidget {
   AddTaskViewBody({super.key});
  TextEditingController titlecontroller=TextEditingController();
    TextEditingController notecontroller=TextEditingController();
        TextEditingController datecontroller=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            AppStrings.tilte,
            style: AppStyles.latoRegular16.copyWith(
              color: AppColors.white
            ),
          ),
          SizedBox(height: 8,),
          CustomTextFormField(controoller: titlecontroller,title: AppStrings.tilteHint,),
          SizedBox(height: 24,),
           
          Text(
            AppStrings.note,
            style: AppStyles.latoRegular16.copyWith(
              color: AppColors.white
            ),
          ),
          SizedBox(height: 8,),
      CustomTextFormField(controoller: notecontroller,title: AppStrings.notehint,),

       SizedBox(height: 24,),
           
          Text(
            AppStrings.date,
            style: AppStyles.latoRegular16.copyWith(
              color: AppColors.white
            ),
          ),
          SizedBox(height: 8,),
         CustomTextFormField(controoller: datecontroller,title: AppStrings.date,),




        ],
      ),
    );
  }
}
