// ignore_for_file: must_be_immutable

part of 'register_one_bloc.dart';

/// Represents the state of RegisterOne in the application.
class RegisterOneState extends Equatable {
  RegisterOneState({
    this.userNameFieldController,
    this.phoneFieldController,
    this.passwordFieldController,
    this.confirmPasswordFieldController,
    this.radioGroup = "",
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.registerOneModelObj,
  });

  TextEditingController? userNameFieldController;

  TextEditingController? phoneFieldController;

  TextEditingController? passwordFieldController;

  TextEditingController? confirmPasswordFieldController;

  RegisterOneModel? registerOneModelObj;

  String radioGroup;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        userNameFieldController,
        phoneFieldController,
        passwordFieldController,
        confirmPasswordFieldController,
        radioGroup,
        isShowPassword,
        isShowPassword1,
        registerOneModelObj,
      ];
  RegisterOneState copyWith({
    TextEditingController? userNameFieldController,
    TextEditingController? phoneFieldController,
    TextEditingController? passwordFieldController,
    TextEditingController? confirmPasswordFieldController,
    String? radioGroup,
    bool? isShowPassword,
    bool? isShowPassword1,
    RegisterOneModel? registerOneModelObj,
  }) {
    return RegisterOneState(
      userNameFieldController:
          userNameFieldController ?? this.userNameFieldController,
      phoneFieldController: phoneFieldController ?? this.phoneFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      confirmPasswordFieldController:
          confirmPasswordFieldController ?? this.confirmPasswordFieldController,
      radioGroup: radioGroup ?? this.radioGroup,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      registerOneModelObj: registerOneModelObj ?? this.registerOneModelObj,
    );
  }
}
