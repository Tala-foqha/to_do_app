// features/task/presentation/manager/task/task_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:to_do_app/core/utils/app_colors%20(1).dart';
import 'package:to_do_app/features/task/data/model/task_model.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  
 TextEditingController titlecontroller = TextEditingController();
  TextEditingController notecontroller = TextEditingController();
 TextEditingController datecontroller = TextEditingController();
 GlobalKey<FormState> formKey=GlobalKey<FormState>();

  
  DateTime currentDate = DateTime.now();
  String startTime = DateFormat('hh:mm a').format(DateTime.now());
  String endtTime = DateFormat(
    'hh:mm a',
    ).format(DateTime.now().add(Duration(minutes: 40)));
  int currentIndex = 0;
void getDate( context)async{


  emit(GetDateLoadingState());
DateTime? pickedDate = await showDatePicker(
context: context,
initialDate: DateTime.now(),
firstDate: DateTime.now(),
lastDate: DateTime(2026),
  );
if(pickedDate!=null){
currentDate=pickedDate;
emit(GetDateSuccessState());
}
else{
print('pickedData == null');
emit(GetDateFailureState());

}

                           
}
void getStartTime(context)async{

  
  emit(GetStartTimeLoadingState());
TimeOfDay? pickedStartTime = await showTimePicker(
context: context,
initialTime: TimeOfDay.fromDateTime(DateTime.now())
  );
if(pickedStartTime!=null){
startTime=pickedStartTime.format(context);
emit(GetStartTimeccessState());
}
else{
print('pickedData == null');
emit(GetStartTimeFailureState());

}

               

}



void getEndTime(context)async{

  
  emit(GetEndTimeLoadingState());
TimeOfDay? pickedStartTime = await showTimePicker(
context: context,
initialTime: TimeOfDay.fromDateTime(DateTime.now())
  );
if(pickedStartTime!=null){
startTime=pickedStartTime.format(context);
emit(GetEndTimeccessState());
}
else{
print('pickedData == null');
emit(GetEndTimeFailureState());

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
void changeCheckMarkIndex(index){
  currentIndex=index;
  emit(ChangeCheckMarkIndex());

}


  List<TaskModel> tasksList = [
];
 void insertTask(TaskModel task){
  emit(InsertTaskLoading());
  try{
    Future.delayed(Duration(seconds: 1));
  tasksList.add(task);
  emit(InsertTaskSuccess());
  titlecontroller.clear();
  notecontroller.clear();
   
  }catch(e){
   emit(InsertTaskFailure()) ;
  }

}




}
