// ignore_for_file: must_be_immutable

part of 'my_jobs_three_bloc.dart';

/// Represents the state of MyJobsThree in the application.
class MyJobsThreeState extends Equatable {
  MyJobsThreeState({this.myJobsThreeModelObj});

  MyJobsThreeModel? myJobsThreeModelObj;

  @override
  List<Object?> get props => [
        myJobsThreeModelObj,
      ];
  MyJobsThreeState copyWith({MyJobsThreeModel? myJobsThreeModelObj}) {
    return MyJobsThreeState(
      myJobsThreeModelObj: myJobsThreeModelObj ?? this.myJobsThreeModelObj,
    );
  }
}
