// ignore_for_file: must_be_immutable

part of 'payment_two_bloc.dart';

/// Represents the state of PaymentTwo in the application.
class PaymentTwoState extends Equatable {
  PaymentTwoState({
    this.expirydateController,
    this.cvvController,
    this.saveCardDetailsCheckbox = false,
    this.paymentTwoModelObj,
  });

  TextEditingController? expirydateController;

  TextEditingController? cvvController;

  PaymentTwoModel? paymentTwoModelObj;

  bool saveCardDetailsCheckbox;

  @override
  List<Object?> get props => [
        expirydateController,
        cvvController,
        saveCardDetailsCheckbox,
        paymentTwoModelObj,
      ];
  PaymentTwoState copyWith({
    TextEditingController? expirydateController,
    TextEditingController? cvvController,
    bool? saveCardDetailsCheckbox,
    PaymentTwoModel? paymentTwoModelObj,
  }) {
    return PaymentTwoState(
      expirydateController: expirydateController ?? this.expirydateController,
      cvvController: cvvController ?? this.cvvController,
      saveCardDetailsCheckbox:
          saveCardDetailsCheckbox ?? this.saveCardDetailsCheckbox,
      paymentTwoModelObj: paymentTwoModelObj ?? this.paymentTwoModelObj,
    );
  }
}
