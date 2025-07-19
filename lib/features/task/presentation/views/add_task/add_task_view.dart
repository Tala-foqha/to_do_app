// features/task/presentation/views/add_task/add_task_view.dart
import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/features/task/presentation/views/add_task/add_task_view_body.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});
static const routeNmae='AddTask';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
        title: Text(AppStrings.addTask,style: AppStyles.latoRegular16.copyWith(
          color: AppColors.white,
          fontSize: 24
        ),),
      ),
      body:AddTaskViewBody() ,
    );
  }
}