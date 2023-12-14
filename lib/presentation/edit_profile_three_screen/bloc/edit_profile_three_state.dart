// ignore_for_file: must_be_immutable

part of 'edit_profile_three_bloc.dart';

/// Represents the state of EditProfileThree in the application.
class EditProfileThreeState extends Equatable {
  EditProfileThreeState({
    this.nameController,
    this.robbieprosekvalueController,
    this.videoValueController,
    this.storyPostValueController,
    this.durationController,
    this.durationController1,
    this.priceController,
    this.editProfileThreeModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? robbieprosekvalueController;

  TextEditingController? videoValueController;

  TextEditingController? storyPostValueController;

  TextEditingController? durationController;

  TextEditingController? durationController1;

  TextEditingController? priceController;

  EditProfileThreeModel? editProfileThreeModelObj;

  @override
  List<Object?> get props => [
        nameController,
        robbieprosekvalueController,
        videoValueController,
        storyPostValueController,
        durationController,
        durationController1,
        priceController,
        editProfileThreeModelObj,
      ];
  EditProfileThreeState copyWith({
    TextEditingController? nameController,
    TextEditingController? robbieprosekvalueController,
    TextEditingController? videoValueController,
    TextEditingController? storyPostValueController,
    TextEditingController? durationController,
    TextEditingController? durationController1,
    TextEditingController? priceController,
    EditProfileThreeModel? editProfileThreeModelObj,
  }) {
    return EditProfileThreeState(
      nameController: nameController ?? this.nameController,
      robbieprosekvalueController:
          robbieprosekvalueController ?? this.robbieprosekvalueController,
      videoValueController: videoValueController ?? this.videoValueController,
      storyPostValueController:
          storyPostValueController ?? this.storyPostValueController,
      durationController: durationController ?? this.durationController,
      durationController1: durationController1 ?? this.durationController1,
      priceController: priceController ?? this.priceController,
      editProfileThreeModelObj:
          editProfileThreeModelObj ?? this.editProfileThreeModelObj,
    );
  }
}
