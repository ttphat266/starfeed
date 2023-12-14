// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.nameController,
    this.robbieprosekvalueController,
    this.robbieprosekvalueController1,
    this.editProfileModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? robbieprosekvalueController;

  TextEditingController? robbieprosekvalueController1;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        nameController,
        robbieprosekvalueController,
        robbieprosekvalueController1,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? nameController,
    TextEditingController? robbieprosekvalueController,
    TextEditingController? robbieprosekvalueController1,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      nameController: nameController ?? this.nameController,
      robbieprosekvalueController:
          robbieprosekvalueController ?? this.robbieprosekvalueController,
      robbieprosekvalueController1:
          robbieprosekvalueController1 ?? this.robbieprosekvalueController1,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
