// ignore_for_file: must_be_immutable

part of 'my_jobs_eight_bloc.dart';

/// Represents the state of MyJobsEight in the application.
class MyJobsEightState extends Equatable {
  MyJobsEightState({this.myJobsEightModelObj});

  MyJobsEightModel? myJobsEightModelObj;

  @override
  List<Object?> get props => [
        myJobsEightModelObj,
      ];
  MyJobsEightState copyWith({MyJobsEightModel? myJobsEightModelObj}) {
    return MyJobsEightState(
      myJobsEightModelObj: myJobsEightModelObj ?? this.myJobsEightModelObj,
    );
  }
}
