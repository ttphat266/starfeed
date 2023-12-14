// ignore_for_file: must_be_immutable

part of 'my_jobs_seven_bloc.dart';

/// Represents the state of MyJobsSeven in the application.
class MyJobsSevenState extends Equatable {
  MyJobsSevenState({
    this.messageController,
    this.myJobsSevenModelObj,
  });

  TextEditingController? messageController;

  MyJobsSevenModel? myJobsSevenModelObj;

  @override
  List<Object?> get props => [
        messageController,
        myJobsSevenModelObj,
      ];
  MyJobsSevenState copyWith({
    TextEditingController? messageController,
    MyJobsSevenModel? myJobsSevenModelObj,
  }) {
    return MyJobsSevenState(
      messageController: messageController ?? this.messageController,
      myJobsSevenModelObj: myJobsSevenModelObj ?? this.myJobsSevenModelObj,
    );
  }
}
