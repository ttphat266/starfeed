// ignore_for_file: must_be_immutable

part of 'my_information_one_bloc.dart';

/// Represents the state of MyInformationOne in the application.
class MyInformationOneState extends Equatable {
  MyInformationOneState({
    this.nameController,
    this.emailController,
    this.myInformationOneModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  MyInformationOneModel? myInformationOneModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        myInformationOneModelObj,
      ];
  MyInformationOneState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    MyInformationOneModel? myInformationOneModelObj,
  }) {
    return MyInformationOneState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      myInformationOneModelObj:
          myInformationOneModelObj ?? this.myInformationOneModelObj,
    );
  }
}
