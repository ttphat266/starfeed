// ignore_for_file: must_be_immutable

part of 'my_jobs_four_bloc.dart';

/// Represents the state of MyJobsFour in the application.
class MyJobsFourState extends Equatable {
  MyJobsFourState({this.myJobsFourModelObj});

  MyJobsFourModel? myJobsFourModelObj;

  @override
  List<Object?> get props => [
        myJobsFourModelObj,
      ];
  MyJobsFourState copyWith({MyJobsFourModel? myJobsFourModelObj}) {
    return MyJobsFourState(
      myJobsFourModelObj: myJobsFourModelObj ?? this.myJobsFourModelObj,
    );
  }
}
