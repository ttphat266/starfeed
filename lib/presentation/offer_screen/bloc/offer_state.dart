// ignore_for_file: must_be_immutable

part of 'offer_bloc.dart';

/// Represents the state of Offer in the application.
class OfferState extends Equatable {
  OfferState({
    this.editTextController,
    this.videoValueEditTextController,
    this.storyPostValueEditTextController,
    this.editTextController1,
    this.editTextController2,
    this.offerModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? videoValueEditTextController;

  TextEditingController? storyPostValueEditTextController;

  TextEditingController? editTextController1;

  TextEditingController? editTextController2;

  OfferModel? offerModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        videoValueEditTextController,
        storyPostValueEditTextController,
        editTextController1,
        editTextController2,
        offerModelObj,
      ];
  OfferState copyWith({
    TextEditingController? editTextController,
    TextEditingController? videoValueEditTextController,
    TextEditingController? storyPostValueEditTextController,
    TextEditingController? editTextController1,
    TextEditingController? editTextController2,
    OfferModel? offerModelObj,
  }) {
    return OfferState(
      editTextController: editTextController ?? this.editTextController,
      videoValueEditTextController:
          videoValueEditTextController ?? this.videoValueEditTextController,
      storyPostValueEditTextController: storyPostValueEditTextController ??
          this.storyPostValueEditTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      editTextController2: editTextController2 ?? this.editTextController2,
      offerModelObj: offerModelObj ?? this.offerModelObj,
    );
  }
}
