// ignore_for_file: must_be_immutable

part of 'login_four_bloc.dart';

/// Represents the state of LoginFour in the application.
class LoginFourState extends Equatable {
  LoginFourState({
    this.phoneNumberController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginFourModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  LoginFourModel? loginFourModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneNumberController,
        passwordController,
        isShowPassword,
        loginFourModelObj,
      ];
  LoginFourState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginFourModel? loginFourModelObj,
  }) {
    return LoginFourState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginFourModelObj: loginFourModelObj ?? this.loginFourModelObj,
    );
  }
}
