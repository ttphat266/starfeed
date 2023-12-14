// ignore_for_file: must_be_immutable

part of 'my_information_bloc.dart';

/// Represents the state of MyInformation in the application.
class MyInformationState extends Equatable {
  MyInformationState({
    this.nameController,
    this.emailController,
    this.myInformationModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  MyInformationModel? myInformationModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        myInformationModelObj,
      ];
  MyInformationState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    MyInformationModel? myInformationModelObj,
  }) {
    return MyInformationState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      myInformationModelObj:
          myInformationModelObj ?? this.myInformationModelObj,
    );
  }
}
