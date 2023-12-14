// ignore_for_file: must_be_immutable

part of 'my_jobs_six_bloc.dart';

/// Represents the state of MyJobsSix in the application.
class MyJobsSixState extends Equatable {
  MyJobsSixState({this.myJobsSixModelObj});

  MyJobsSixModel? myJobsSixModelObj;

  @override
  List<Object?> get props => [
        myJobsSixModelObj,
      ];
  MyJobsSixState copyWith({MyJobsSixModel? myJobsSixModelObj}) {
    return MyJobsSixState(
      myJobsSixModelObj: myJobsSixModelObj ?? this.myJobsSixModelObj,
    );
  }
}
