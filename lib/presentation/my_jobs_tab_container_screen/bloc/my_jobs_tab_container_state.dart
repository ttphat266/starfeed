// ignore_for_file: must_be_immutable

part of 'my_jobs_tab_container_bloc.dart';

/// Represents the state of MyJobsTabContainer in the application.
class MyJobsTabContainerState extends Equatable {
  MyJobsTabContainerState({this.myJobsTabContainerModelObj});

  MyJobsTabContainerModel? myJobsTabContainerModelObj;

  @override
  List<Object?> get props => [
        myJobsTabContainerModelObj,
      ];
  MyJobsTabContainerState copyWith(
      {MyJobsTabContainerModel? myJobsTabContainerModelObj}) {
    return MyJobsTabContainerState(
      myJobsTabContainerModelObj:
          myJobsTabContainerModelObj ?? this.myJobsTabContainerModelObj,
    );
  }
}
