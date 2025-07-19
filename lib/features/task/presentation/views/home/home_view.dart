// features/task/presentation/views/home/home_view.dart
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/features/task/presentation/views/home/task_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text(DateFormat.yMMMMd().format(DateTime.now()),
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColors.white,
              fontSize: 32
             ),),
             SizedBox(height: 12,),
             Text(AppStrings.today,
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColors.white,
              fontSize: 32
             ),
             ),
             SizedBox(height: 14,),
              SizedBox(
                height: 94,
                child: DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor:AppColors.primary,
                        selectedTextColor: Colors.white,
                        dateTextStyle: AppStyles.latoRegular16.copyWith(
                          color: Colors.white,
                         
                        ),
                        monthTextStyle:AppStyles.latoRegular16.copyWith(
                          color: Colors.white,
                         ) ,
                         dayTextStyle: AppStyles.latoRegular16.copyWith(
                          color: Colors.white,
                         ),
                        onDateChange: (date) {
                          // New date selected
                          // setState(() {
                          //   _selectedValue = date;
                          // });
                        },
                ),
              ),
              SizedBox(height: 50,),
              //noTasks()
              TaskComponent(),
               TaskComponent(),
            ])
        ),
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor:AppColors.primary,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }

  Column noTasks() {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Center(child: Image.asset('assets/images/Checklist-rafiki 1.png')),
            SizedBox(height: 16,),
            Text('What do you want to do today?',
            style: AppStyles.latoRegular16.copyWith(
              color: AppColors.white
            ),
            ),
            SizedBox(height: 10,),
            Text('Tap + to add your tasks',
            style: AppStyles.latoRegular16.copyWith(
              color: AppColors.white
            ),
            ),

             

            ],);
  }
}

