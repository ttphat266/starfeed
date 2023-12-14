// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

/// Represents the state of LoginOne in the application.
class LoginOneState extends Equatable {
  LoginOneState({
    this.phoneNumberController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginOneModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  LoginOneModel? loginOneModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneNumberController,
        passwordController,
        isShowPassword,
        loginOneModelObj,
      ];
  LoginOneState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginOneModel? loginOneModelObj,
  }) {
    return LoginOneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginOneModelObj: loginOneModelObj ?? this.loginOneModelObj,
    );
  }
}
