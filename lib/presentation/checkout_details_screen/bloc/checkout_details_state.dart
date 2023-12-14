// ignore_for_file: must_be_immutable

part of 'checkout_details_bloc.dart';

/// Represents the state of CheckoutDetails in the application.
class CheckoutDetailsState extends Equatable {
  CheckoutDetailsState({
    this.fromDateEditTextController,
    this.toDateEditTextController,
    this.postByEditTextController,
    this.instructionsEditTextController,
    this.radioGroup = "",
    this.checkoutDetailsModelObj,
  });

  TextEditingController? fromDateEditTextController;

  TextEditingController? toDateEditTextController;

  TextEditingController? postByEditTextController;

  TextEditingController? instructionsEditTextController;

  CheckoutDetailsModel? checkoutDetailsModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        fromDateEditTextController,
        toDateEditTextController,
        postByEditTextController,
        instructionsEditTextController,
        radioGroup,
        checkoutDetailsModelObj,
      ];
  CheckoutDetailsState copyWith({
    TextEditingController? fromDateEditTextController,
    TextEditingController? toDateEditTextController,
    TextEditingController? postByEditTextController,
    TextEditingController? instructionsEditTextController,
    String? radioGroup,
    CheckoutDetailsModel? checkoutDetailsModelObj,
  }) {
    return CheckoutDetailsState(
      fromDateEditTextController:
          fromDateEditTextController ?? this.fromDateEditTextController,
      toDateEditTextController:
          toDateEditTextController ?? this.toDateEditTextController,
      postByEditTextController:
          postByEditTextController ?? this.postByEditTextController,
      instructionsEditTextController:
          instructionsEditTextController ?? this.instructionsEditTextController,
      radioGroup: radioGroup ?? this.radioGroup,
      checkoutDetailsModelObj:
          checkoutDetailsModelObj ?? this.checkoutDetailsModelObj,
    );
  }
}
