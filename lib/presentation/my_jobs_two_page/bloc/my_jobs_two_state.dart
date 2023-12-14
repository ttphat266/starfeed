// ignore_for_file: must_be_immutable

part of 'my_jobs_two_bloc.dart';

/// Represents the state of MyJobsTwo in the application.
class MyJobsTwoState extends Equatable {
  MyJobsTwoState({this.myJobsTwoModelObj});

  MyJobsTwoModel? myJobsTwoModelObj;

  @override
  List<Object?> get props => [
        myJobsTwoModelObj,
      ];
  MyJobsTwoState copyWith({MyJobsTwoModel? myJobsTwoModelObj}) {
    return MyJobsTwoState(
      myJobsTwoModelObj: myJobsTwoModelObj ?? this.myJobsTwoModelObj,
    );
  }
}
