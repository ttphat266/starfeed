// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

/// Represents the state of Register in the application.
class RegisterState extends Equatable {
  RegisterState({
    this.userNameController,
    this.phoneController,
    this.passwordController,
    this.confirmPasswordController,
    this.radioGroup = "",
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.registerModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  RegisterModel? registerModelObj;

  String radioGroup;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        userNameController,
        phoneController,
        passwordController,
        confirmPasswordController,
        radioGroup,
        isShowPassword,
        isShowPassword1,
        registerModelObj,
      ];
  RegisterState copyWith({
    TextEditingController? userNameController,
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    String? radioGroup,
    bool? isShowPassword,
    bool? isShowPassword1,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      userNameController: userNameController ?? this.userNameController,
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      radioGroup: radioGroup ?? this.radioGroup,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
