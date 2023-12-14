// ignore_for_file: must_be_immutable

part of 'payment_three_bloc.dart';

/// Represents the state of PaymentThree in the application.
class PaymentThreeState extends Equatable {
  PaymentThreeState({this.paymentThreeModelObj});

  PaymentThreeModel? paymentThreeModelObj;

  @override
  List<Object?> get props => [
        paymentThreeModelObj,
      ];
  PaymentThreeState copyWith({PaymentThreeModel? paymentThreeModelObj}) {
    return PaymentThreeState(
      paymentThreeModelObj: paymentThreeModelObj ?? this.paymentThreeModelObj,
    );
  }
}
