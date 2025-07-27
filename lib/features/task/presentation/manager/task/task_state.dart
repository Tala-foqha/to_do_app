// features/task/presentation/manager/task/task_state.dart
part of 'task_cubit.dart';

@immutable
abstract class TaskState {}

class TaskInitial extends TaskState {

}
class GetDateLoadingState extends TaskState{}

class GetDateSuccessState extends TaskState{}
class GetDateFailureState extends TaskState{}


class GetStartTimeLoadingState extends TaskState{}

class GetStartTimeccessState extends TaskState{}
class GetStartTimeFailureState extends TaskState{}



class GetEndTimeLoadingState extends TaskState{}

class GetEndTimeccessState extends TaskState{}
class GetEndTimeFailureState extends TaskState{}

class ChangeCheckMarkIndex extends TaskState{}









