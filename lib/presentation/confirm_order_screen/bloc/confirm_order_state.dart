// ignore_for_file: must_be_immutable

part of 'confirm_order_bloc.dart';

/// Represents the state of ConfirmOrder in the application.
class ConfirmOrderState extends Equatable {
  ConfirmOrderState({this.confirmOrderModelObj});

  ConfirmOrderModel? confirmOrderModelObj;

  @override
  List<Object?> get props => [
        confirmOrderModelObj,
      ];
  ConfirmOrderState copyWith({ConfirmOrderModel? confirmOrderModelObj}) {
    return ConfirmOrderState(
      confirmOrderModelObj: confirmOrderModelObj ?? this.confirmOrderModelObj,
    );
  }
}
