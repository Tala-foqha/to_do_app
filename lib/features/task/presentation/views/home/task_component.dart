// features/task/presentation/views/home/task_component.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/features/task/data/model/task_model.dart';

class TaskComponent extends StatelessWidget {
  const TaskComponent({
    super.key, required this.taskModel, required this.index,
  });

  final TaskModel taskModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      height: 136,
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      decoration: BoxDecoration(
        color: getColor(taskModel.color),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // الجزء الأيسر (نصوص المهمة)
          Expanded(
            //child:
            // Padding(
             // padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
    Text(
      taskModel.title,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 24,
          ),
    ),
    Row(
      children: [
        // أيقونة الساعة
        SvgPicture.asset('assets/images/timer.svg'),
         const SizedBox(width: 8),
        Text(
          '${taskModel.startTime} PM - ${taskModel.endTime}PM',
          style: AppStyles.latoRegular16.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    ),
    Text(
      taskModel.note,
      style: AppStyles.latoRegular16.copyWith(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
                ],
              ),
         //   ),
          ),
    
          // خط فاصل عمودي + كلمة TODO بشكل عمودي
          Container(
            width: 1,
            height: 60,
            color: Colors.white24,
            margin: const EdgeInsets.symmetric(horizontal: 8),
          ),
          RotatedBox(
            quarterTurns: 3, // لعرض النص عموديًا من الأسفل للأعلى
            child: Text(
           taskModel.isCompleted? AppStrings.completed:AppStrings.toDo,
              style: AppStyles.latoRegular16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



Color getColor(int index) {
  switch (index) {
    case 0:
      return AppColors.red;
    case 1:
      return AppColors.green;
    case 2:
      return AppColors.blueGrey;
    case 3:
      return AppColors.blue;
    case 4:
      return AppColors.orange;
    case 5:
      return AppColors.purple;
    default:
      return AppColors.grey;
  }
}

class NoTaskCommponnet extends StatelessWidget {
  const NoTaskCommponnet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


