// ignore_for_file: must_be_immutable

part of 'payment_bloc.dart';

/// Represents the state of Payment in the application.
class PaymentState extends Equatable {
  PaymentState({
    this.cardNumberEditTextController,
    this.expirydateController,
    this.cvvController,
    this.saveCardDetailsCheckBox = false,
    this.paymentModelObj,
  });

  TextEditingController? cardNumberEditTextController;

  TextEditingController? expirydateController;

  TextEditingController? cvvController;

  PaymentModel? paymentModelObj;

  bool saveCardDetailsCheckBox;

  @override
  List<Object?> get props => [
        cardNumberEditTextController,
        expirydateController,
        cvvController,
        saveCardDetailsCheckBox,
        paymentModelObj,
      ];
  PaymentState copyWith({
    TextEditingController? cardNumberEditTextController,
    TextEditingController? expirydateController,
    TextEditingController? cvvController,
    bool? saveCardDetailsCheckBox,
    PaymentModel? paymentModelObj,
  }) {
    return PaymentState(
      cardNumberEditTextController:
          cardNumberEditTextController ?? this.cardNumberEditTextController,
      expirydateController: expirydateController ?? this.expirydateController,
      cvvController: cvvController ?? this.cvvController,
      saveCardDetailsCheckBox:
          saveCardDetailsCheckBox ?? this.saveCardDetailsCheckBox,
      paymentModelObj: paymentModelObj ?? this.paymentModelObj,
    );
  }
}
