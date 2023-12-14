// ignore_for_file: must_be_immutable

part of 'edit_profile_one_bloc.dart';

/// Represents the state of EditProfileOne in the application.
class EditProfileOneState extends Equatable {
  EditProfileOneState({
    this.nameEditTextController,
    this.robbieprosekvalueController,
    this.videovalueEditTextController,
    this.durationEditTextController,
    this.durationController,
    this.priceController,
    this.editProfileOneModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? robbieprosekvalueController;

  TextEditingController? videovalueEditTextController;

  TextEditingController? durationEditTextController;

  TextEditingController? durationController;

  TextEditingController? priceController;

  EditProfileOneModel? editProfileOneModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        robbieprosekvalueController,
        videovalueEditTextController,
        durationEditTextController,
        durationController,
        priceController,
        editProfileOneModelObj,
      ];
  EditProfileOneState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? robbieprosekvalueController,
    TextEditingController? videovalueEditTextController,
    TextEditingController? durationEditTextController,
    TextEditingController? durationController,
    TextEditingController? priceController,
    EditProfileOneModel? editProfileOneModelObj,
  }) {
    return EditProfileOneState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      robbieprosekvalueController:
          robbieprosekvalueController ?? this.robbieprosekvalueController,
      videovalueEditTextController:
          videovalueEditTextController ?? this.videovalueEditTextController,
      durationEditTextController:
          durationEditTextController ?? this.durationEditTextController,
      durationController: durationController ?? this.durationController,
      priceController: priceController ?? this.priceController,
      editProfileOneModelObj:
          editProfileOneModelObj ?? this.editProfileOneModelObj,
    );
  }
}
