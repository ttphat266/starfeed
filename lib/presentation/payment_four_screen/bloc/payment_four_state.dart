// ignore_for_file: must_be_immutable

part of 'payment_four_bloc.dart';

/// Represents the state of PaymentFour in the application.
class PaymentFourState extends Equatable {
  PaymentFourState({this.paymentFourModelObj});

  PaymentFourModel? paymentFourModelObj;

  @override
  List<Object?> get props => [
        paymentFourModelObj,
      ];
  PaymentFourState copyWith({PaymentFourModel? paymentFourModelObj}) {
    return PaymentFourState(
      paymentFourModelObj: paymentFourModelObj ?? this.paymentFourModelObj,
    );
  }
}
