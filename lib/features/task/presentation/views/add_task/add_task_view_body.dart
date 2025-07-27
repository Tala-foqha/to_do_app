// features/task/presentation/views/add_task/add_task_view_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/core/widgets/custom_button.dart';
import 'package:to_do_app/features/task/presentation/manager/task/task_cubit.dart';
import 'package:to_do_app/features/task/presentation/views/add_task/custom_text_form_field.dart';
class AddTaskViewBody extends StatelessWidget {
  AddTaskViewBody({super.key});

  final TextEditingController titlecontroller = TextEditingController();
  final TextEditingController notecontroller = TextEditingController();
  final TextEditingController datecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          child: BlocBuilder<TaskCubit, TaskState>(
            builder: (context, state) {
              final cubit = BlocProvider.of<TaskCubit>(context);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.tilte,
                    style: AppStyles.latoRegular16.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    controoller: titlecontroller,
                    title: AppStrings.tilteHint,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    AppStrings.note,
                    style: AppStyles.latoRegular16.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    controoller: notecontroller,
                    title: AppStrings.notehint,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    AppStrings.date,
                    style: AppStyles.latoRegular16.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    controoller: datecontroller,
                    title: DateFormat.yMd().format(cubit.currentDate),
                    suffixIcon: GestureDetector(
                      onTap: () async {
                        cubit.getDate(context);
                      },
                      child: SvgPicture.asset(
                        'assets/images/calendar.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    readOnly: true,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.startTime,
                              style: AppStyles.latoRegular16.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                              suffixIcon: GestureDetector(
                                onTap: () async {
                             cubit.getStartTime(context);
                                },
                                child: SvgPicture.asset(
                                  'assets/images/timer.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              title: cubit.startTime,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 27.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.endTime,
                              style: AppStyles.latoRegular16.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  cubit.getEndTime(context);
                                },
                                child: SvgPicture.asset(
                                  'assets/images/timer.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              title: cubit.endtTime,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 68.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.color,
                          style: AppStyles.latoRegular16.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) => Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    cubit.changeCheckMarkIndex(index);
                                    // عدل اللون الحالي إذا لزم
                                  },
                                  child: CircleAvatar(
                                    backgroundColor:cubit. getColor(index),
                                    child: index == cubit.currentIndex
                                        ? Icon(
                                            Icons.check,
                                            color: AppColors.white,
                                          )
                                        : null,
                                  ),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    height: 48.h,
                    width: double.infinity,
                    child: CustomButton(
                      text: AppStrings.addTask,
                      onPressed: () {
                        // تنفيذ الإضافة
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
