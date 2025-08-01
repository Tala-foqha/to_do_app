// features/task/presentation/views/home/bottom_sheet.dart

import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/widgets/custom_button.dart';
import 'package:to_do_app/features/task/data/model/task_model.dart';
import 'package:to_do_app/features/task/presentation/views/home/task_component.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.index
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(context:context,builder: (context) {
         return Container(
          padding: EdgeInsets.all( 24),
          height: 240,
          width: double.infinity,
          color:AppColors.deepGrey,
          child: Column(
            
            children: [
              SizedBox(
                height: 48,
                width: double.infinity,
                child: CustomButton(text: 'Task Completed ', onPressed: (){})),
              SizedBox(height: 24,),
            SizedBox(
                height: 48,
                width: double.infinity,
                child: CustomButton(text:AppStrings.deleteTask , onPressed: (){},backgroundColor: AppColors.red,)),
              SizedBox(height: 24,),
             SizedBox(
                height: 48,
                width: double.infinity,
                child: CustomButton(text: AppStrings.cancel, onPressed: (){})),
             // SizedBox(height: 24,),
            ],
          ),
         );
        },);
      },
      child: TaskComponent(
        index: index ,
        taskModel: TaskModel.tasksList[index],));
  }
}

