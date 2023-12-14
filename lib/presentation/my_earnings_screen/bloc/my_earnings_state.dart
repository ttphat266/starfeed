// ignore_for_file: must_be_immutable

part of 'my_earnings_bloc.dart';

/// Represents the state of MyEarnings in the application.
class MyEarningsState extends Equatable {
  MyEarningsState({this.myEarningsModelObj});

  MyEarningsModel? myEarningsModelObj;

  @override
  List<Object?> get props => [
        myEarningsModelObj,
      ];
  MyEarningsState copyWith({MyEarningsModel? myEarningsModelObj}) {
    return MyEarningsState(
      myEarningsModelObj: myEarningsModelObj ?? this.myEarningsModelObj,
    );
  }
}
