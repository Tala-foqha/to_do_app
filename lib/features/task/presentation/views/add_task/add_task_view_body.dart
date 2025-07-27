// features/task/presentation/views/add_task/add_task_view_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/utils/app_styles.dart';
import 'package:to_do_app/core/widgets/custom_button.dart';
import 'package:to_do_app/features/task/presentation/views/add_task/custom_text_form_field.dart';

class AddTaskViewBody extends StatefulWidget {
   AddTaskViewBody({super.key});

  @override
  State<AddTaskViewBody> createState() => _AddTaskViewBodyState();
}

class _AddTaskViewBodyState extends State<AddTaskViewBody> {
  TextEditingController titlecontroller=TextEditingController();

    TextEditingController notecontroller=TextEditingController();

        TextEditingController datecontroller=TextEditingController();

        DateTime currentDate=DateTime.now();
        String startTime=DateFormat('hh:mm a').format(DateTime.now());
         String endtTime=DateFormat('hh:mm a').format(DateTime.now().add(Duration(minutes: 40)));
         int currentIndex=0;


  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                AppStrings.tilte,
                style: AppStyles.latoRegular16.copyWith(
                  color: AppColors.white
                ),
              ),
              SizedBox(height: 8.h,),
              CustomTextFormField(controoller: titlecontroller,title: AppStrings.tilteHint,),
              SizedBox(height: 24.h,),
               
              Text(
                AppStrings.note,
                style: AppStyles.latoRegular16.copyWith(
                  color: AppColors.white
                ),
              ),
              SizedBox(height: 8.h,),
          CustomTextFormField(controoller: notecontroller,title: AppStrings.notehint,),
          
           SizedBox(height: 24.h,),
               
              Text(
                AppStrings.date,
                style: AppStyles.latoRegular16.copyWith(
                  color: AppColors.white
                ),
              ),
              SizedBox(height: 8.h,),
             CustomTextFormField(controoller: datecontroller,title: DateFormat.yMd().format(currentDate),
             suffixIcon: GestureDetector(
              onTap: ()async {
                
          DateTime ?pickedDate= await showDatePicker(context: context,
          initialDate: DateTime.now(),
           firstDate: DateTime.now(),
           lastDate: DateTime(2026));
          
           setState(() {
             if(pickedDate!=null){
           currentDate=pickedDate;}
             
           });
              },
              child: SvgPicture.asset('assets/images/calendar.svg',fit: BoxFit.scaleDown,)),
             readOnly: true,
             ),
             SizedBox(height: 24.h,),
             Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        
                            Text(
                  AppStrings.startTime,
                  style: AppStyles.latoRegular16.copyWith(
                    color: AppColors.white
                  ),
                            ),
                            SizedBox(height: 8.h,),
                        CustomTextFormField(
                           suffixIcon: GestureDetector(
                            onTap: ()async{
                           TimeOfDay?pickedSrartTime=await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(DateTime.now()));
                            setState(() {
                              if(pickedSrartTime!=null)
                            {
                              startTime=pickedSrartTime!.format(context);
                            }});
                            },
                            child: SvgPicture.asset('assets/images/timer.svg',fit: BoxFit.scaleDown,)),
                          title:startTime,),
                  
                    ],
                  ),
                ),
                SizedBox(width: 27.w,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        
                            Text(
                  AppStrings.endTime,
                  style: AppStyles.latoRegular16.copyWith(
                    color: AppColors.white
                  ),
                            ),
                            SizedBox(height: 8.h,),
                        CustomTextFormField(
                          suffixIcon: SvgPicture.asset('assets/images/timer.svg',fit: BoxFit.scaleDown,),
                          title: endtTime,),
                  
                    ],
                  ),
                ),
          
                
          
              ],
             ),
             SizedBox(height: 24,),
             SizedBox(
              height: 68.h,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(AppStrings.color,style: AppStyles.latoRegular16.copyWith(color: AppColors.white),) ,
                 SizedBox(height: 8.h,),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context,index)=>
                    
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                        setState(() {
                          currentIndex=index;
                        });  
                        },
                        child: CircleAvatar(
                          backgroundColor: getColor(index),
                        child:index==currentIndex? Icon(Icons.check,
                        color: AppColors.white,
                        ):null,
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  )
                  ),
                ),
                ],
               ),
             ),
            //  Spacer(),
            SizedBox(height: 40.h,),
             SizedBox(height: 48.h,width: double.infinity
             ,child: CustomButton(text: AppStrings.addTask, onPressed: (){}),)
          
          
          
          
            ],
          ),
        ),
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

