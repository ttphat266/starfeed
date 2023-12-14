// ignore_for_file: must_be_immutable

part of 'edit_profile_two_bloc.dart';

/// Represents the state of EditProfileTwo in the application.
class EditProfileTwoState extends Equatable {
  EditProfileTwoState({
    this.nameEditTextController,
    this.robbieprosekvalueController,
    this.videovalueEditTextController,
    this.storyPostvalueStackController,
    this.durationEditTextController,
    this.priceEditTextController,
    this.editProfileTwoModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? robbieprosekvalueController;

  TextEditingController? videovalueEditTextController;

  TextEditingController? storyPostvalueStackController;

  TextEditingController? durationEditTextController;

  TextEditingController? priceEditTextController;

  EditProfileTwoModel? editProfileTwoModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        robbieprosekvalueController,
        videovalueEditTextController,
        storyPostvalueStackController,
        durationEditTextController,
        priceEditTextController,
        editProfileTwoModelObj,
      ];
  EditProfileTwoState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? robbieprosekvalueController,
    TextEditingController? videovalueEditTextController,
    TextEditingController? storyPostvalueStackController,
    TextEditingController? durationEditTextController,
    TextEditingController? priceEditTextController,
    EditProfileTwoModel? editProfileTwoModelObj,
  }) {
    return EditProfileTwoState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      robbieprosekvalueController:
          robbieprosekvalueController ?? this.robbieprosekvalueController,
      videovalueEditTextController:
          videovalueEditTextController ?? this.videovalueEditTextController,
      storyPostvalueStackController:
          storyPostvalueStackController ?? this.storyPostvalueStackController,
      durationEditTextController:
          durationEditTextController ?? this.durationEditTextController,
      priceEditTextController:
          priceEditTextController ?? this.priceEditTextController,
      editProfileTwoModelObj:
          editProfileTwoModelObj ?? this.editProfileTwoModelObj,
    );
  }
}
