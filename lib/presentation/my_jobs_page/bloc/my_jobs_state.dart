// ignore_for_file: must_be_immutable

part of 'my_jobs_bloc.dart';

/// Represents the state of MyJobs in the application.
class MyJobsState extends Equatable {
  MyJobsState({this.myJobsModelObj});

  MyJobsModel? myJobsModelObj;

  @override
  List<Object?> get props => [
        myJobsModelObj,
      ];
  MyJobsState copyWith({MyJobsModel? myJobsModelObj}) {
    return MyJobsState(
      myJobsModelObj: myJobsModelObj ?? this.myJobsModelObj,
    );
  }
}
