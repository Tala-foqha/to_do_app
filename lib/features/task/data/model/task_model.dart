// features/task/data/model/task_model.dart
class TaskModel {
  final String id;
  final String title;
  final String note;
  final String startTime;
  final String endTime;
  final bool isCompleted;
  final int color;

  TaskModel({required this.id,required this.color, required this.title, required this.note, required this.startTime, required this.endTime, required this.isCompleted});

  static List<TaskModel>tasksList=[
    TaskModel(id: '1', 
    title: 'Flutter',
     note: 'Learn Dart',
      startTime: '09:33', 
      color: 2,
      endTime: '09:45',
       isCompleted: false),

        TaskModel(id: '2', 
    title: 'Flutter 4',
     note: 'Learn Java',
      startTime: '09:33', 
      color: 3,
      endTime: '09:45',
       isCompleted: false)

  ];

}