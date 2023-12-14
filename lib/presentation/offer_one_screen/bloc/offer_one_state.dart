// ignore_for_file: must_be_immutable

part of 'offer_one_bloc.dart';

/// Represents the state of OfferOne in the application.
class OfferOneState extends Equatable {
  OfferOneState({
    this.editTextController,
    this.videoValueEditTextController,
    this.storyPostValueEditTextController,
    this.editTextController1,
    this.editTextController2,
    this.offerOneModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? videoValueEditTextController;

  TextEditingController? storyPostValueEditTextController;

  TextEditingController? editTextController1;

  TextEditingController? editTextController2;

  OfferOneModel? offerOneModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        videoValueEditTextController,
        storyPostValueEditTextController,
        editTextController1,
        editTextController2,
        offerOneModelObj,
      ];
  OfferOneState copyWith({
    TextEditingController? editTextController,
    TextEditingController? videoValueEditTextController,
    TextEditingController? storyPostValueEditTextController,
    TextEditingController? editTextController1,
    TextEditingController? editTextController2,
    OfferOneModel? offerOneModelObj,
  }) {
    return OfferOneState(
      editTextController: editTextController ?? this.editTextController,
      videoValueEditTextController:
          videoValueEditTextController ?? this.videoValueEditTextController,
      storyPostValueEditTextController: storyPostValueEditTextController ??
          this.storyPostValueEditTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      editTextController2: editTextController2 ?? this.editTextController2,
      offerOneModelObj: offerOneModelObj ?? this.offerOneModelObj,
    );
  }
}
